using LinearAlgebra.BLAS
using OpenBLASHighCoreCount
using OpenBLASHighCoreCount_jll
using Test

@testset "OpenBLASHighCoreCount test suite" begin
    libs = BLAS.get_config().loaded_libs
    idx = findfirst(l -> l.libname == OpenBLASHighCoreCount_jll.libopenblas_path, libs)
    @test idx !== nothing
    @test libs[idx].interface === :ilp64
    BLAS.set_num_threads(128)
    @test BLAS.get_num_threads() == 128
end
