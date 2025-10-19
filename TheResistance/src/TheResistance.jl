module TheResistance

using Reexport
@reexport using TheForce

export JediKnight, XWingFighter, attack

struct JediKnight
    name::String
    side::TheForce.LightSide
end

struct XWingFighter
    pilot::JediKnight
end

attack(xw::XWingFighter, mass::Real) = TheForce.force_pull(xw.pilot.side, mass)

end