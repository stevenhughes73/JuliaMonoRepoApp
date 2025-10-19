using TheForce
using Test

@testset "TheForce.jl" begin
    @test force_level(LightSide()) > force_level(DarkSide())
    @test force_push(LightSide(), 2) == 4
    @test force_pull(DarkSide(),  3) == 9
end
nothing