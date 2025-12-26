from __future__ import annotations

import re
from collections import defaultdict
from pathlib import Path

from .types import CategoryT, CurlConstant


CURLOPT_PATTERN = re.compile(
    r"^pattern\s+(CURLOPT_\w+)\s*::\s*CURLoption\s*\n"  # pyright: ignore[reportImplicitStringConcatenation]
    r"pattern\s+\1\s*=\s*CURLoption\s+(\d+)",
    re.MULTILINE,
)

CURLMOPT_PATTERN = re.compile(
    r"^pattern\s+(CURLMOPT_\w+)\s*::\s*CURLMoption\s*\n"  # pyright: ignore[reportImplicitStringConcatenation]
    r"pattern\s+\1\s*=\s*CURLMoption\s+(\d+)",
    re.MULTILINE,
)

CURLINFO_PATTERN = re.compile(
    r"^pattern\s+(CURLINFO_\w+)\s*::\s*CURLINFO\s*\n"  # pyright: ignore[reportImplicitStringConcatenation]
    r"pattern\s+\1\s*=\s*CURLINFO\s+(\d+)",
    re.MULTILINE,
)


def parse_constants(
    file_path: Path, pattern: re.Pattern[str], factory: type[CurlConstant[CategoryT]]
) -> list[CurlConstant[CategoryT]]:
    """Parse constant pattern declarations from the generated Haskell file."""
    try:
        content = file_path.read_text()
    except (FileNotFoundError, PermissionError) as e:
        raise ValueError(f"Error reading {file_path}: {e}")
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
