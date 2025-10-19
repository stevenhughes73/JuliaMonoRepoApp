using Test
using TheResistance, TheForce

@testset "TheEmpire.jl" begin
    j = JediKnight("Luke", LightSide())
    xw = XWingFighter(j)
    @test attack(xw, 5.0) == 15.0
end
nothing