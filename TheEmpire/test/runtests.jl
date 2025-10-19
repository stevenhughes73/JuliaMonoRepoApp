using TheEmpire
using Test

@testset "TheEmpire.jl" begin
    sith = SithLord("Vader", DarkSide())
    tf = TieFighter(sith)
    @test attack(tf, 5.0) == 10.0
end
nothing