# максимальное количество допустимых нитей
println(Threads.nthreads())
# показывает идентификатор нити 
println(Threads.threadid())

for i = 1:10
    println("i = $i on thread $(Threads.threadid())")
end

println()

# для работы нужно увеличить максимальное количество нитей
Threads.@threads for i = 1:10
    println("i = $i on thread $(Threads.threadid())")
end

# непредсказуемое поведение
x = 0
Threads.@threads for i = 1:10
    global x = i
end
println(x)

acc = Ref(0)
Threads.@threads for i in 1:1000
    acc[] += 1
end
println(acc[])