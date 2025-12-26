#!/usr/bin/env python3
from __future__ import annotations

from collections.abc import Mapping, Sequence
from pathlib import Path
from functools import partial
from typing import Callable

import click

from postprocess.types import CurlConstant, CurlInfo, CurlOption, CategoryT
from postprocess.generate import FFIConfig, FFISafety, ModuleConfig, FFISpec
from postprocess.parsing import (
    categorize,
    parse_constants,
    CURLINFO_PATTERN,
    CURLMOPT_PATTERN,
    CURLOPT_PATTERN,
)


SETOPT_CONFIG = ModuleConfig(
    module_base="Easy.SetOpt",
    typeclass_name="CurlOption",
    handle_type="CURL",
    constant_haskell_type="CURLoption",
    option_argument_name="curlOption",
    option_function_name="curlSetOpt",
    result_param_name="option",
    result_type_name="CurlOptionArgument",
    result_type_adjust_argument=lambda t: t,
    ffi_config=FFIConfig(
        base_name="curl_easy_setopt",
        associated_comment="option",
        adjust_associated_type=lambda t: t,
    ),
    ffi_specs=[
        FFISpec(
            "curl_easy_setopt_long",
            "CLong",
            "a long argument",
            "CLong",
        ),
        FFISpec(
            "curl_easy_setopt_off_t",
            # curl_off_t is always mapped to a 64bit datatype, determined in curl/system.h
            "Curl_off_t",
            "a curl_off_t argument",
            "Curl_off_t",
        ),
        FFISpec(
            "curl_easy_setopt_ptr",
            "Ptr Void",
            "a pointer argument",
            "Ptr Void",
        ),
        FFISpec(
            "curl_easy_setopt_blob",
            "Ptr Curl_blob",
            "a curl_blob argument",
            "Ptr Curl_blob",
        ),
    ],
)

MULTIOPT_CONFIG = ModuleConfig(
    module_base="Multi.SetOpt",
    typeclass_name="CurlMultiOption",
    handle_type="CURLM",
    constant_haskell_type="CURLMoption",
    option_argument_name="curlMOption",
    option_function_name="curlSetMOpt",
    result_param_name="option",
    result_type_name="CurlMOptionArgument",
    result_type_adjust_argument=lambda t: t,
    ffi_config=FFIConfig(
        base_name="curl_multi_setopt",
        associated_comment="option",
        adjust_associated_type=lambda t: t,
    ),
    ffi_specs=[
        FFISpec(
            "curl_multi_setopt_long",
            "CLong",
            "a long argument",
            "CLong",
        ),
        FFISpec(
            "curl_multi_setopt_off_t",
            # curl_off_t is always mapped to a 64bit datatype, determined in curl/system.h
            "Curl_off_t",
            "a curl_off_t argument",
            "Curl_off_t",
        ),
        FFISpec(
            "curl_multi_setopt_ptr",
            "Ptr Void",
            "a pointer argument",
            "Ptr Void",
        ),
        FFISpec(
            "curl_multi_setopt_blob",
            "Ptr Curl_blob",
            "a curl_blob argument",
            "Ptr Curl_blob",
        ),
    ],
)

GETINFO_CONFIG = ModuleConfig(
    module_base="Easy.GetInfo",
    typeclass_name="CurlInfo",
    handle_type="CURL",
    constant_haskell_type="CURLINFO",
    option_argument_name="curlInfo",
    option_function_name="curlGetInfo",
    result_param_name="info",
    result_type_name="CurlInfoResult",
    result_type_adjust_argument=lambda t: f"Ptr ({t})",
    ffi_config=FFIConfig(
        base_name="curl_easy_getinfo",
        associated_comment="info",
        adjust_associated_type=lambda t: f"Ptr {t}",
    ),
    ffi_specs=[
        FFISpec(
            "curl_easy_getinfo_string",
            "CString",
            "a string result",
            "Ptr CString",
        ),
        FFISpec(
            "curl_easy_getinfo_long",
            "CLong",
            "a long result",
            "Ptr CLong",
        ),
        FFISpec(
            "curl_easy_getinfo_double",
            "CDouble",
            "a double result",
            "Ptr CDouble",
        ),
        FFISpec(
            "curl_easy_getinfo_slist",
            "(Ptr Curl_slist)",
            "an slist result",
            "Ptr (Ptr Curl_slist)",
        ),
        FFISpec(
            "curl_easy_getinfo_socket_t",
            "Curl_socket_t",
            "an socket_t result",
            "Ptr Curl_socket_t",
        ),
        FFISpec(
            "curl_easy_getinfo_off_t",
            "CLong",
            "an off_t result",
            "Ptr CLong",
        ),
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
            partial(config.generate_foreign_module, FFISafety.UNSAFE),
        ),
        (
            f"Generating {config.module_base} Safe FFI module",
            base_path / "Safe.hs",
            partial(config.generate_foreign_module, FFISafety.SAFE),
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


@click.command()
@click.option("--generate", is_flag=True, help="Generate the Safe and Unsafe modules")
def main(generate: bool) -> None:
    """Parse CURLOPT and CURLINFO patterns and categorize them by type."""
    script_dir = Path(__file__).parent
    curl_hs_path = script_dir / "src" / "Generated" / "Curl" / "Curl.hs"
    multi_hs_path = script_dir / "src" / "Generated" / "Curl" / "Multi.hs"

    options = parse_constants(curl_hs_path, CURLOPT_PATTERN, CurlOption)
    options_categories = categorize(options)
    print_summary(options, options_categories, "CURL options")

    moptions = parse_constants(multi_hs_path, CURLMOPT_PATTERN, CurlOption)
    moptions_categories = categorize(moptions)
    print_summary(moptions, moptions_categories, "CURLM options")

    all_infos = parse_constants(curl_hs_path, CURLINFO_PATTERN, CurlInfo)
    # Filter out CURLINFO_NONE (value 0) which is not a real info constant.
    # Likewise CURLINFO_LASTONE (value 70, at the time of writing), is also not
    # a documented option that should be exposed.
    infos = [
        info
        for info in all_infos
        if info.value != 0 and info.name != "CURLINFO_LASTONE"
    ]
    infos_categories = categorize(infos)
    print_summary(infos, infos_categories, "CURL infos")

    if generate:
        setopt_path = script_dir / "src" / "Generated" / "Curl" / "Easy" / "SetOpt"
        generate_all_modules(SETOPT_CONFIG, options, setopt_path)

        mopt_path = script_dir / "src" / "Generated" / "Curl" / "Multi" / "SetOpt"
        generate_all_modules(MULTIOPT_CONFIG, moptions, mopt_path)

        getinfo_path = script_dir / "src" / "Generated" / "Curl" / "Easy" / "GetInfo"
        generate_all_modules(GETINFO_CONFIG, infos, getinfo_path)


if __name__ == "__main__":
    main()
