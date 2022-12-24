# сравнение скорости работы Atomic типа с обычным типом
# видно на наскольких прогонах, что Atomic быстрее
# так как не затрачивается время на прерывания и переключения потоков
function mycount_first(n)
    c = 0
    start = time_ns()

    Threads.@threads for i in 1:n
        c += i
    end

    ent = time_ns()
    println("время не атомарной переменной: ", ent - start)

    return c
end

function mycount_second(n)
    c = Threads.Atomic{Int}(0);
    start = time_ns()

    Threads.@threads for i in 1:n
        Threads.atomic_add!(c, i)
    end

    ent = time_ns()
    println("время Atomic переменной: ", ent - start)

    return c
end

println(mycount_first(100000))

println(mycount_second(100000))
