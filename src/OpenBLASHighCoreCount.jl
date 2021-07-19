module OpenBLASHighCoreCount

using LinearAlgebra.BLAS
using OpenBLASHighCoreCount_jll

__init__() = BLAS.lbt_forward(OpenBLASHighCoreCount_jll.libopenblas_path)

end # module
