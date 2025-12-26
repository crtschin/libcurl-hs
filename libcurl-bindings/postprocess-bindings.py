from __future__ import annotations

import re
from abc import ABC, abstractmethod
from collections import defaultdict
from collections.abc import Mapping, Sequence
from dataclasses import dataclass
from enum import StrEnum
from pathlib import Path
from functools import cached_property, partial
from typing import Callable, Generic, TypeVar, override

import click


def write_module(output_path: Path, lines: list[str]) -> None:
    """Write lines to a Haskell module file, overwriting if it exists."""
    output_path.parent.mkdir(parents=True, exist_ok=True)
    _ = output_path.write_text("\n".join(lines) + "\n")


class OptionType(StrEnum):
    """Types of CURL options based on their numeric ranges."""

    LONG = "long"
    OBJECTPOINT = "objectpoint"
    FUNCTIONPOINT = "functionpoint"
    OFF_T = "off_t"


class InfoType(StrEnum):
    """Types of CURL info based on their type encoding."""

    STRING = "string"
    LONG = "long"
    DOUBLE = "double"
    SLIST = "slist"
    OFF_T = "off_t"


CategoryT = TypeVar("CategoryT", bound=StrEnum)


@dataclass(frozen=True)
class CurlConstant(ABC, Generic[CategoryT]):
    """Base class for CURL constants (options and infos)."""

    name: str
    value: int

    @cached_property
    @abstractmethod
    def category(self) -> CategoryT:
        """Determine the category of this constant."""
        pass

    @property
    def type_name(self) -> str:
        """Convert CURL_NAME to CurlName (singleton type name)."""
        return "".join(word.capitalize() for word in self.name.split("_"))


@dataclass(frozen=True)
class CurlOption(CurlConstant[OptionType]):
    """Represents a CURL option constant."""

    @cached_property
    @override
    def category(self) -> OptionType:
        """Determine the option type based on its numeric value."""
        if self.value < 10000:
            return OptionType.LONG
        if self.value < 20000:
            return OptionType.OBJECTPOINT
        if self.value < 30000:
            return OptionType.FUNCTIONPOINT
        return OptionType.OFF_T

    @property
    def arg_type(self) -> str:
        """Get the Haskell argument type for this option."""
        return {
            OptionType.LONG: "CLong",
            OptionType.OFF_T: "Curl_off_t",
            OptionType.OBJECTPOINT: "Ptr Void",
            OptionType.FUNCTIONPOINT: "Ptr Void",
        }[self.category]

    @property
    def ffi_function(self) -> str:
        """Get the FFI wrapper function name for this option."""
        return {
            OptionType.LONG: "curl_easy_setopt_long",
            OptionType.OFF_T: "curl_easy_setopt_off_t",
            OptionType.OBJECTPOINT: "curl_easy_setopt_ptr",
            OptionType.FUNCTIONPOINT: "curl_easy_setopt_ptr",
        }[self.category]


@dataclass(frozen=True)
class CurlInfo(CurlConstant[InfoType]):
    """Represents a CURL info constant."""

    @cached_property
    @override
    def category(self) -> InfoType:
        """Determine the info type based on type encoding in value."""
        type_mask = self.value & 0xF00000
        return {
            0x100000: InfoType.STRING,
            0x200000: InfoType.LONG,
            0x300000: InfoType.DOUBLE,
            0x400000: InfoType.SLIST,
            0x600000: InfoType.OFF_T,
        }.get(type_mask, InfoType.LONG)

    @property
    def result_type(self) -> str:
        """Get the Haskell return type for this info."""
        return {
            InfoType.STRING: "Ptr CChar",
            InfoType.LONG: "CLong",
            InfoType.DOUBLE: "CDouble",
            InfoType.SLIST: "Ptr Curl_slist",
            InfoType.OFF_T: "CLong",
        }[self.category]

    @property
    def ffi_function(self) -> str:
        """Get the FFI wrapper function name for this info."""
        return {
            InfoType.STRING: "curl_easy_getinfo_string",
            InfoType.LONG: "curl_easy_getinfo_long",
            InfoType.DOUBLE: "curl_easy_getinfo_double",
            InfoType.SLIST: "curl_easy_getinfo_slist",
            InfoType.OFF_T: "curl_easy_getinfo_off_t",
        }[self.category]


def parse_constants(
    file_path: Path, pattern: re.Pattern[str], factory: type[CurlConstant[CategoryT]]
) -> list[CurlConstant[CategoryT]]:
    """Parse constant pattern declarations from the generated Haskell file."""
    try:
        content = file_path.read_text()
    except (FileNotFoundError, PermissionError) as e:
        click.echo(f"Error reading {file_path}: {e}", err=True)
        raise
    return [
        factory(name=match.group(1), value=int(match.group(2)))
        for match in pattern.finditer(content)
    ]


def categorize(
    constants: list[CurlConstant[CategoryT]],
) -> dict[CategoryT, list[CurlConstant[CategoryT]]]:
    """Categorize constants by their category type."""
    categories: dict[CategoryT, list[CurlConstant[CategoryT]]] = defaultdict(list)
    for const in constants:
        categories[const.category].append(const)
    return dict(categories)


@dataclass(frozen=True)
class FFISpec:
    """Specification for generating an FFI function."""

    name: str
    ffi_type: str
    wrapper_type: str
    comment: str
    unwrap_pattern: str


@dataclass(frozen=True)
class ModuleConfig:
    """Configuration for generating a family of modules (SetOpt or GetInfo)."""

    module_base: str
    typeclass_name: str
    constant_haskell_type: str
    method_name: str
    ffi_base_name: str
    result_param_name: str
    result_type_name: str
    ffi_specs: list[FFISpec]

    def generate_class_module(self, output_path: Path) -> None:
        """Generate the typeclass module."""
        lines = [
            "{-# LANGUAGE TypeFamilies #-}",
            f"module Generated.Curl.Easy.{self.module_base}.Class where",
            "",
            "import Generated.Curl.Curl",
            "import Data.Kind",
            "import Data.Void",
            "import Foreign.Ptr",
            "import Prelude",
            "",
            f"class {self.typeclass_name} c where",
            f"  type {self.result_type_name} c :: Type",
            "  ",
            f"  {self.method_name} :: c -> {self.constant_haskell_type}",
        ]

        if self.module_base == "SetOpt":
            lines.extend([
                "  ",
                f"  curlSetOpt :: c -> Ptr Void -> {self.result_type_name} c -> IO CURLcode",
            ])
        else:
            lines.extend([
                "  ",
                f"  curlGetInfo :: c -> Ptr Void -> Ptr ({self.result_type_name} c) -> IO CURLcode",
            ])

        write_module(output_path, lines)

    def generate_foreign_module(self, safety: str, output_path: Path) -> None:
        """Generate Safe or Unsafe module with foreign function declarations."""
        module_name = "Unsafe" if safety == "unsafe" else "Safe"
        lines = [
            "{-# LANGUAGE CApiFFI #-}",
            f"module Generated.Curl.Easy.{self.module_base}.{module_name} where",
            "",
            "import Generated.Curl.Curl",
            "import Data.Void",
            "import Foreign.C.Types",
            "import Foreign.Ptr",
            "import Prelude",
            "",
        ]

        for spec in self.ffi_specs:
            lines.extend(self._generate_ffi_function(spec, safety))

        write_module(output_path, lines)

    def _generate_ffi_function(self, spec: FFISpec, safety: str) -> list[str]:
        """Generate FFI import declaration."""
        is_setopt = self.module_base == "SetOpt"

        ffi_lines = [
            f"-- | {self.ffi_base_name} with {spec.comment} ({safety})",
            f'foreign import ccall {safety} "{self.ffi_base_name}"',
            f"  {spec.name}_c",
            "    :: Ptr Void        -- ^ CURL handle",
            f"    -> CUInt           -- ^ {self.result_param_name}",
        ]

        if is_setopt:
            ffi_lines.append(f"    -> {spec.ffi_type}           -- ^ value")
        else:
            ffi_lines.append(f"    -> Ptr {spec.ffi_type}     -- ^ result pointer")

        ffi_lines.append("    -> IO CUInt")
        ffi_lines.append("")

        wrapper_lines = [
            f"-- | Type-safe wrapper for {self.ffi_base_name} with {spec.comment}",
        ]

        if is_setopt:
            wrapper_lines.extend([
                f"{spec.name} :: Ptr Void -> {self.constant_haskell_type} -> {spec.wrapper_type} -> IO CURLcode",
                f"{spec.name} handle ({self.constant_haskell_type} opt) {spec.unwrap_pattern} =",
                f"  CURLcode <$> {spec.name}_c handle opt val",
            ])
        else:
            wrapper_lines.extend([
                f"{spec.name} :: Ptr Void -> {self.constant_haskell_type} -> Ptr {spec.ffi_type} -> IO CURLcode",
                f"{spec.name} handle ({self.constant_haskell_type} info) ptr =",
                f"  CURLcode <$> {spec.name}_c handle info ptr",
            ])

        return ffi_lines + wrapper_lines + [""]

    def generate_instance(self, const: CurlConstant[CategoryT]) -> list[str]:
        """Generate singleton type and typeclass instance for a constant."""
        lines = [
            f"data {const.type_name} = {const.type_name}",
            "",
            f"instance {self.typeclass_name} {const.type_name} where",
        ]

        if isinstance(const, CurlOption):
            lines.extend([
                f"  type {self.result_type_name} {const.type_name} = {const.arg_type}",
                f"  {self.method_name} _ = {const.name}",
                f"  curlSetOpt opt handle arg = {self.module_base}.{const.ffi_function} handle ({self.method_name} opt) arg",
            ])
        elif isinstance(const, CurlInfo):
            lines.extend([
                f"  type {self.result_type_name} {const.type_name} = {const.result_type}",
                f"  {self.method_name} _ = {const.name}",
                f"  curlGetInfo info handle ptr = {self.module_base}.{const.ffi_function} handle ({self.method_name} info) ptr",
            ])
        else:
            raise AssertionError(f"Unexpected type: {type(const)}")

        lines.append("")
        return lines

    def generate_instances_module(
        self,
        constants: list[CurlConstant[CategoryT]],
        module_name: str,
        foreign_module: str,
        output_path: Path,
    ) -> None:
        """Generate the Instances module with singleton types and typeclass instances."""
        lines = [
            "{-# LANGUAGE TypeFamilies #-}",
            "{-# LANGUAGE DataKinds #-}",
            "{-# OPTIONS_GHC -Wno-unused-imports #-}",
            f"module Generated.Curl.Easy.{self.module_base}.Instances.{module_name} where",
            "",
            "import Data.Void",
            f"import Generated.Curl.Easy.{self.module_base}.Class",
            "import Generated.Curl.Curl",
            f"import qualified Generated.Curl.Easy.{self.module_base}.{foreign_module} as {self.module_base}",
            "import Foreign.C.Types",
            "import Foreign.Ptr",
            "",
        ]

        for const in constants:
            lines.extend(self.generate_instance(const))

        write_module(output_path, lines)


SETOPT_CONFIG = ModuleConfig(
    module_base="SetOpt",
    typeclass_name="CurlOption",
    constant_haskell_type="CURLoption",
    method_name="curlOption",
    ffi_base_name="curl_easy_setopt",
    result_param_name="option",
    result_type_name="CurlOptionArgument",
    ffi_specs=[
        FFISpec("curl_easy_setopt_long", "CLong", "CLong", "a long argument", "val"),
        FFISpec(
            "curl_easy_setopt_off_t",
            "CLong",
            "Curl_off_t",
            "a curl_off_t argument",
            "(Curl_off_t val)",
        ),
        FFISpec(
            "curl_easy_setopt_ptr",
            "Ptr Void",
            "Ptr Void",
            "a pointer argument",
            "val",
        ),
    ],
)

GETINFO_CONFIG = ModuleConfig(
    module_base="GetInfo",
    typeclass_name="CurlInfo",
    constant_haskell_type="CURLINFO",
    method_name="curlInfo",
    ffi_base_name="curl_easy_getinfo",
    result_param_name="info",
    result_type_name="CurlInfoResult",
    ffi_specs=[
        FFISpec(
            "curl_easy_getinfo_string",
            "(Ptr CChar)",
            "(Ptr CChar)",
            "a string result",
            "ptr",
        ),
        FFISpec("curl_easy_getinfo_long", "CLong", "CLong", "a long result", "ptr"),
        FFISpec(
            "curl_easy_getinfo_double", "CDouble", "CDouble", "a double result", "ptr"
        ),
        FFISpec(
            "curl_easy_getinfo_slist",
            "(Ptr Curl_slist)",
            "(Ptr Curl_slist)",
            "an slist result",
            "ptr",
        ),
        FFISpec("curl_easy_getinfo_off_t", "CLong", "CLong", "an off_t result", "ptr"),
    ],
)


def generate_all_modules(
    config: ModuleConfig,
    constants: list[CurlConstant[CategoryT]],
    base_path: Path,
) -> None:
    """Generate all Haskell modules for a given configuration."""
    modules_to_generate: list[tuple[str, Path, Callable[[Path], None]]] = [
        (
            f"Generating {config.module_base} typeclass module",
            base_path / "Class.hs",
            config.generate_class_module,
        ),
        (
            f"Generating {config.module_base} Unsafe FFI module",
            base_path / "Unsafe.hs",
            partial(config.generate_foreign_module, "unsafe"),
        ),
        (
            f"Generating {config.module_base} Safe FFI module",
            base_path / "Safe.hs",
            partial(config.generate_foreign_module, "safe"),
        ),
        (
            f"Generating {config.module_base} Unsafe instances",
            base_path / "Instances" / "Unsafe.hs",
            partial(config.generate_instances_module, constants, "Unsafe", "Unsafe"),
        ),
        (
            f"Generating {config.module_base} Safe instances",
            base_path / "Instances" / "Safe.hs",
            partial(config.generate_instances_module, constants, "Safe", "Safe"),
        ),
    ]

    for description, path, generator in modules_to_generate:
        click.echo(f"{description}...")
        generator(path)
        click.echo(f"  Generated: {path}")

    click.echo(f"All {config.module_base} modules generated successfully!\n")


def print_summary(
    constants: Sequence[CurlConstant[CategoryT]],
    categories: Mapping[CategoryT, Sequence[CurlConstant[CategoryT]]],
    type_name: str,
) -> None:
    """Print a summary of parsed CURL constants."""
    click.echo(f"Found {len(constants)} {type_name}:\n")

    for category, items in categories.items():
        click.echo(f"{category}: {len(items)} {type_name.lower()}")
        for item in items[:3]:
            click.echo(f"  {item.name} = {item.value}")
        if len(items) > 3:
            click.echo(f"  ... and {len(items) - 3} more")
        click.echo()


CURLOPT_PATTERN = re.compile(
    r"^pattern\s+(CURLOPT_\w+)\s*::\s*CURLoption\s*\n"
    + r"pattern\s+\1\s*=\s*CURLoption\s+(\d+)",
    re.MULTILINE,
)

CURLINFO_PATTERN = re.compile(
    r"^pattern\s+(CURLINFO_\w+)\s*::\s*CURLINFO\s*\n"
    + r"pattern\s+\1\s*=\s*CURLINFO\s+(\d+)",
    re.MULTILINE,
)


@click.command()
@click.option("--generate", is_flag=True, help="Generate the Safe and Unsafe modules")
def main(generate: bool) -> None:
    """Parse CURLOPT and CURLINFO patterns and categorize them by type."""
    script_dir = Path(__file__).parent
    curl_hs_path = script_dir / "src" / "Generated" / "Curl" / "Curl.hs"

    options = parse_constants(curl_hs_path, CURLOPT_PATTERN, CurlOption)
    options_categories = categorize(options)
    print_summary(options, options_categories, "CURL options")

    all_infos = parse_constants(curl_hs_path, CURLINFO_PATTERN, CurlInfo)
    # Filter out CURLINFO_NONE (value 0) which is not a real info constant
    infos = [info for info in all_infos if info.value != 0]
    infos_categories = categorize(infos)
    print_summary(infos, infos_categories, "CURL infos")

    if generate:
        setopt_base_path = script_dir / "src" / "Generated" / "Curl" / "Easy" / "SetOpt"
        generate_all_modules(SETOPT_CONFIG, options, setopt_base_path)

        getinfo_base_path = script_dir / "src" / "Generated" / "Curl" / "Easy" / "GetInfo"
        generate_all_modules(GETINFO_CONFIG, infos, getinfo_base_path)


if __name__ == "__main__":
    main()
