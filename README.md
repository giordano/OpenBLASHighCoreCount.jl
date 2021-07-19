## OpenBLASHighCoreCount.jl

This package uses [`libblastrampoline`](https://github.com/staticfloat/libblastrampoline),
available since Julia v1.7, to forward all BLAS functions to a build of OpenBLAS which
allows you to use up to 128 threads, instead of the default 32 of the pre-built version of
OpenBLAS which somes with Julia official binaries.

### Installation

```julia
]add https://github.com/giordano/OpenBLASHighCoreCount.jl
```

### Usage

```julia
using OpenBLASHighCoreCount
```

and that's it, really.
