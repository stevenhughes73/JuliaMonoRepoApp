module TheEmpire

using Reexport
@reexport using TheForce

export SithLord, TieFighter, attack

struct SithLord
    name::String
    side::TheForce.DarkSide
end

struct TieFighter
    pilot::SithLord
end

attack(tf::TieFighter, mass::Real) = TheForce.force_push(tf.pilot.side, mass)

end
