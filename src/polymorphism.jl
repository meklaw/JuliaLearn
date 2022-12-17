# методы в структурах Julia недопустимы
# применяется multiple dispatch, можно определить любое количество методов
# с одинаковым названием, но разными входными параметрами

mutable struct Tiger
    taillength::Float64
    coatcolor::String
end

#

abstract type Cat end

struct Lion <: Cat
    maneColor::String
    roar::String
end

struct Panther <: Cat
    eyeColor::String
end

#

function fight(t::Tiger, c::Cat)
    println("The $(t.coatcolor) tiger wins!")
end

fight(t::Tiger, l::Lion) = println("The $(l.maneColor)-maned lion wins!")

#

tigra = Tiger(55.5, "white")

fight(tigra, Panther("blue")) # The white tiger wins!
fight(tigra, Lion("yellow","R")) # The yellow-maned lion wins!

# fight(Panther("brown"), Lion("red","RAWR"))
# Load Error: no method matching fight(::Panther, ::Lion)

# нужно добавить следующий метод 
fight(c::Cat, l::Lion) = println("The cat beats the Lion")
fight(Panther("brown"), Lion("red","RAWR")) # The cat beats the Lion  

# если добавить ещё 
# fight(c::Lion, l::Cat) = println("The Lion beats cat!")
# метод выкинет ошибку двусмысленности
# fight(Lion("yellow","R"), Lion("brown","Rr"))
# MethodError: fight(::Lion, ::Lion) is ambiguous.