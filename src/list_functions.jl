using Match
using Lazy

function nth(n, lst)
    @match(lst, [a1, b...])
    if n == 1
        return a1
    elseif b == []
        return nothing
    end
    return nth(n-1, b)
end

println(nth(4, [1,2,3,4]))

# ленивый список из Lazy
x = list(1,2,3)
println(x) # List: (1 2 3)
println(first(x)) # 1
println(tail(x)) # List: (2 3)

# канонический вид
println(1:list(2,3)) # List: (1 2 3)

lazy(n) = @lazy n:lazy(n+1)
println(lazy(4))
println(take(4, lazy(14)))

lazy(n, f) = @lazy n:lazy(f(n), f) 
f2(x) = x * 2
println(f2(3))
println(lazy(3, f2))
# constantly - создает бесконечный список с повторяющимся аргументом
println(constantly(f2))
# repeatedly - создает бесконечный список с повторяющейся функцией
println(repeatedly(rand))
# repeatedly - создает бесконечный список с функцией которая применятеся к элементу 
println(iterated(f2, 1)) # (1 2 4 8 16 32 64 128 256 512 1024 ...)