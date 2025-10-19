module TheForce

export ForcePower, LightSide, DarkSide, force_level, force_push, force_pull

abstract type ForcePower end
struct LightSide <: ForcePower end
struct DarkSide  <: ForcePower end

force_level(::LightSide) = 100
force_level(::DarkSide)  = 90

force_push(::ForcePower, m::Real) = 2m
force_pull(::ForcePower, m::Real) = 3m

end
