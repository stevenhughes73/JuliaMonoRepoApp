module StarWarsApp

using Reexport
@reexport using TheForce
@reexport using TheEmpire
@reexport using TheResistance

export battle

"""
    battle()

Mock battle; returns :resistance_wins if Jedi beats Sith.
"""
function battle()
    jedi = TheResistance.JediKnight("Luke", TheForce.LightSide())
    sith = TheEmpire.SithLord("Vader", TheForce.DarkSide())
    xw   = TheResistance.XWingFighter(jedi)
    tf   = TheEmpire.TieFighter(sith)

    mass = 10.0
    atk_res = TheResistance.attack(xw, mass)
    atk_emp = TheEmpire.attack(tf, mass)

    return atk_res > atk_emp ? :resistance_wins : :empire_wins
end

end