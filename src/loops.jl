for s in ["one", "two", "three"]
    println(s)
end

for n in 1: 10
    println(n)
end
println("as")
n = 10
while n > 0
   println(n)
#    выдаст ошибку, т.к. изменяется глобальная переменнная
#    n -= 1
    global n -= 1
end