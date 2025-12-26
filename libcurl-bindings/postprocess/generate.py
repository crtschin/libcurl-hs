from __future__ import annotations

from collections.abc import Callable
from dataclasses import dataclass
from enum import StrEnum
from functools import cached_property
from pathlib import Path

from .types import CurlConstant, CategoryT


@dataclass(frozen=True)
class FFISpec:
    """Specification for generating an FFI function."""

    name: str
    ffi_type: str
    comment: str
    unwrap_type_name: str
    unwrap_pattern: Callable[[str], str]


class FFISafety(StrEnum):
    SAFE = "safe"
    UNSAFE = "unsafe"

    @cached_property
    def module_name(self) -> str:
        return self.capitalize()


@dataclass(frozen=True)
class FFIConfig:
    base_name: str
    associated_comment: str
    adjust_associated_type: Callable[[str], str]


@dataclass(frozen=True)
class ModuleConfig:
    """Configuration for generating a family of modules (SetOpt or GetInfo)."""

    module_base: str
    typeclass_name: str
    constant_haskell_type: str
    option_argument_name: str
    option_function_name: str
    result_param_name: str
    result_type_name: str
    result_type_adjust_argument: Callable[[str], str]
    ffi_config: FFIConfig
    ffi_specs: list[FFISpec]

    def generate_class_module(self, output_path: Path) -> None:
        """Generate the typeclass module."""
        lines = [
            "{-# LANGUAGE TypeFamilies #-}",
            "{-# OPTIONS_GHC -Wno-unused-imports #-}",
            f"module Generated.Curl.{self.module_base}.Class where",
            "",
            "import Generated.Curl.Curl",
            "import Generated.Curl.Multi",
            "import Data.Kind",
            "import Data.Void",
            "import Foreign.Ptr",
            "import Prelude",
            "",
            f"class {self.typeclass_name} c where",
            f"  type {self.result_type_name} c :: Type",
            f"  {self.option_argument_name} :: c -> {self.constant_haskell_type}",
            f"  {self.option_function_name} :: c -> Ptr Void -> {self.result_type_adjust_argument(self.result_type_name + ' c')} -> IO CURLcode",
        ]

        write_module(output_path, lines)

    def generate_foreign_module(self, ffi_safety: FFISafety, output_path: Path) -> None:
        """Generate Safe or Unsafe module with foreign function declarations."""
        lines = [
            "{-# LANGUAGE CApiFFI #-}",
            "{-# OPTIONS_GHC -Wno-unused-imports #-}",
            f"module Generated.Curl.{self.module_base}.{ffi_safety.module_name} where",
            "",
            "import Generated.Curl.Curl",
            "import Generated.Curl.Easy",
            "import Generated.Curl.Multi",
            "import Data.Void",
            "import Foreign.C",
            "import Foreign.C.Types",
            "import Foreign.Ptr",
            "import Prelude",
            "",
        ]

        for spec in self.ffi_specs:
            lines.extend(self._generate_ffi_function(spec, ffi_safety))

        write_module(output_path, lines)

    def _generate_ffi_function(self, spec: FFISpec, ffi_safety: FFISafety) -> list[str]:
        """Generate FFI import declaration."""
        ffi_lines = [
            f"-- | {self.ffi_config.base_name} with {spec.comment} ({ffi_safety.value})",
            f'foreign import ccall {ffi_safety.value} "{self.ffi_config.base_name}"',
            f"  {spec.name}_c",
            "    :: Ptr Void        -- ^ CURL handle",
            f"    -> CUInt           -- ^ {self.result_param_name}",
            f"    -> {self.ffi_config.adjust_associated_type(spec.ffi_type)}           -- ^ {self.ffi_config.associated_comment}",
            "    -> IO CUInt",
            "",
            f"-- | Type-safe wrapper for {self.ffi_config.base_name} with {spec.comment}",
            f"{spec.name} :: Ptr Void -> {self.constant_haskell_type} -> {spec.unwrap_type_name} -> IO CURLcode",
            f"{spec.name} handle ({self.constant_haskell_type} opt) {spec.unwrap_pattern('val')} =",
            f"  CURLcode <$> {spec.name}_c handle opt val",
            "",
        ]

        return ffi_lines

    def generate_instance(self, const: CurlConstant[CategoryT]) -> list[str]:
        """Generate singleton type and typeclass instance for a constant."""
        lines = [
            f"data {const.type_name} = {const.type_name}",
            "",
            f"instance {self.typeclass_name} {const.type_name} where",
            f"  type {self.result_type_name} {const.type_name} = {const.associated_type}",
            f"  {self.option_argument_name} _ = {const.name}",
            f"  {self.option_function_name} opt handle = {self.module_base}.{const.ffi_function(self.ffi_config.base_name)} handle ({self.option_argument_name} opt)",
        ]

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
            f"module Generated.Curl.{self.module_base}.Instances.{module_name} where",
            "",
            "import Data.Void",
            f"import Generated.Curl.{self.module_base}.Class",
            "import Generated.Curl.Easy",
            "import Generated.Curl.Multi",
            "import Generated.Curl.Curl",
            f"import qualified Generated.Curl.{self.module_base}.{foreign_module} as {self.module_base}",
            "import Foreign.C.Types",
            "import Foreign.Ptr",
            "",
        ]

        for const in constants:
            lines.extend(self.generate_instance(const))

        write_module(output_path, lines)


def write_module(output_path: Path, lines: list[str]) -> None:
    """Write lines to a Haskell module file, overwriting if it exists."""
    output_path.parent.mkdir(parents=True, exist_ok=True)
    _ = output_path.write_text("\n".join(lines) + "\n")
