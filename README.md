# libcurl Haskell library

This repository contains code for interacting against curl's libcurl C API. It
currently consists of 2 components.

- `libcurl-bindings`.
- `libcurl-linear`.

##  `libcurl-bindings`

This library contains automatically generated bindings based on the libcurl
header files, using hs-bindgen and some custom codegen. The current version
is based off of `curl@8.17.0`. As the bindings are generated based on this API
version, caveats apply. While these bindings are approximately where I want them
to be, the API, and especially the module layout, may shift.

Regenerating bindings are done via `justfile generate`.

##  `libcurl-linear`

A very-much WIP attempt at writing a high-level Haskell-comfortable API based
on libcurl, using linear types. Look at this at your own risk. It may not even
compile at the moment of checkout.
