"""
    TheForce

A Julia package providing core Force functionality for the Star Wars monorepo.

This module contains the fundamental Force powers that both the Empire and 
the Resistance depend upon.
"""
module TheForce

export ForcePower, LightSide, DarkSide, force_level, force_push, force_pull
export use_force

""" 
    ForcePower  

An abstract type representing a side of the Force.
"""
abstract type ForcePower end

"""
    LightSide  
    
A concrete type representing the Light Side of the Force.
"""
struct LightSide <: ForcePower end

"""
    DarkSide

A concrete type representing the Dark Side of the Force.
"""
struct DarkSide  <: ForcePower end

force_level(::LightSide) = 100
force_level(::DarkSide)  = 90

force_push(::ForcePower, m::Real) = 2m
force_pull(::ForcePower, m::Real) = 3m

"""
    use_force()

Feel the power of the Force flowing through you.

This function connects you to the mystical energy field that binds the 
galaxy together, providing the foundation for all Force-based abilities.

# Returns
- `String`: A message confirming your connection to the Force

# Examples
```julia-repl
julia> use_force()
"You feel the power of the Force"
```
"""
function use_force()
    return "You feel the power of the Force"
end

end
