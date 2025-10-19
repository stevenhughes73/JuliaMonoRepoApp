using StarWarsApp
using Test

@testset "StarWarsApp.jl" begin
    @test battle() == :resistance_wins
end
nothing
