struct Tiger
    taillength::Float64
    coatcolor::String
end

tigger = Tiger(3.5, "orange")
println(tigger) # Tiger(3.5, "orange")
println(typeof(tigger))
sherekhan = typeof(tigger)(5.6, "fire")
println(sherekhan)
# tigger.taillength = 3.3 - ошибка
# объекты иммутабельны по умолчанию

# этот подход не рекомендуется и лучше использовать Accessors.jl 
# если требуется мутабельные объекты
mutable struct Lion
    taillength::Float64
    coatcolor::String
end

lion = Lion(3.5, "orange")
lion.taillength = 3.3
println(lion) # Lion(3.3, "orange")

# наследование в лоб не поддерживается, поэтому нужен абстрактный тип
abstract type Cat end

struct Kitty <: Cat
    maneColor::String
    roar::String
end

struct Panther <: Cat
    eyeColor::String
end

li = Kitty("green", "rrr")
println(li) # Kitty("green", "rrr")


# subtype() и supertype()
# возвращают наследников и предка
# все типы в Julia являются подтипом Any
supertype(Int64)    # => Signed
supertype(Signed)   # => Integer
supertype(Integer)  # => Real
supertype(Real)     # => Number
supertype(Number)   # => Any

# передача по ссылке
# передаётся значение ссылки на объект!!!!!
mutable struct Dog
    maneColor::String
    roar::String
end

function change(l::Dog)
    l.roar = "GHr"
end

dog = Dog("grey", "rrr")
println(dog)
change(dog)
println(dog)