from __future__ import annotations

from abc import ABC, abstractmethod
from dataclasses import dataclass
from enum import StrEnum
from functools import cached_property
from typing import Generic, TypeVar, override



class OptionType(StrEnum):
    """Types of CURL options based on their numeric ranges."""

    LONG = "long"
    OBJECTPOINT = "objectpoint"
    FUNCTIONPOINT = "functionpoint"
    OFF_T = "off_t"
    BLOB = "blob"


class InfoType(StrEnum):
    """Types of CURL info based on their type encoding."""

    STRING = "string"
    LONG = "long"
    DOUBLE = "double"
    SLIST = "slist"
    SOCKET = "socket"
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

    @cached_property
    @abstractmethod
    def associated_type(self) -> str:
        """Get the Haskell argument type for this option."""
        pass

    @property
    def type_name(self) -> str:
        """Convert CURL_NAME to CurlName (singleton type name)."""
        return "".join(word.capitalize() for word in self.name.split("_"))

    @abstractmethod
    def ffi_function(self, function_name: str) -> str:
        """Get the FFI wrapper function name for this option."""
        pass

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
        if self.value < 40000:
            return OptionType.OFF_T
        return OptionType.BLOB

    @cached_property
    @override
    def associated_type(self) -> str:
        """Get the Haskell argument type for this option."""
        return {
            OptionType.LONG: "CLong",
            OptionType.OFF_T: "Curl_off_t",
            OptionType.OBJECTPOINT: "Ptr Void",
            OptionType.FUNCTIONPOINT: "Ptr Void",
            OptionType.BLOB: "Ptr Curl_blob",
        }[self.category]

    @override
    def ffi_function(self, function_name: str) -> str:
        """Get the FFI wrapper function name for this option."""
        return {
            OptionType.LONG: f"{function_name}_long",
            OptionType.OFF_T: f"{function_name}_off_t",
            OptionType.OBJECTPOINT: f"{function_name}_ptr",
            OptionType.FUNCTIONPOINT: f"{function_name}_ptr",
            OptionType.BLOB: f"{function_name}_blob",
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
            0x500000: InfoType.SOCKET,
            0x600000: InfoType.OFF_T,
        }[type_mask]

    @cached_property
    @override
    def associated_type(self) -> str:
        """Get the Haskell return type for this info."""
        return {
            InfoType.STRING: "Ptr CChar",
            InfoType.LONG: "CLong",
            InfoType.DOUBLE: "CDouble",
            InfoType.SLIST: "Ptr Curl_slist",
            InfoType.SOCKET: "Curl_socket_t",
            InfoType.OFF_T: "CLong",
        }[self.category]

    @override
    def ffi_function(self, function_name: str) -> str:
        """Get the FFI wrapper function name for this option."""
        return {
            InfoType.STRING: f"{function_name}_string",
            InfoType.LONG: f"{function_name}_long",
            InfoType.DOUBLE: f"{function_name}_double",
            InfoType.SLIST: f"{function_name}_slist",
            InfoType.SOCKET: f"{function_name}_socket_t",
            InfoType.OFF_T: f"{function_name}_off_t",
        }[self.category]
