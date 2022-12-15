someVar = 5

try
    someOtherVar
catch e
    println(e)
end

ку = 0.00001
привет = "Hello"
привет = ку
println(привет)


# выведет ошибку
# println(pi)
# pi = 3
# при этом pi - будет переменной из библиотеки Math
# чтобы следующий код сработал, нужно очистить сессию repl
# выведет 3
# pi = 3
# println(pi)