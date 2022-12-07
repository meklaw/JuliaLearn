println(1*2*3*4*5*6*7*8*9*10)

function fact(n)
    if n <= 0
        return 1
    else
        return n * fact(n-1)
    end
end

function five()
    15+20
    5
end

println(fact(5))
println(five())

println(fact(50))
println(fact(BigInt(50)))

# функциональная абстракция
function comb(n, r)
    div(fact(n), fact(r)*fact(n-r))
end

comb(n, r) = div(fact(n), fact(r)*fact(n-r)) 

println(comb(10,3)) # 120

function varargs(args...)
    return args
end

println(varargs(50))
println(varargs(50, 100.01))
println(varargs())