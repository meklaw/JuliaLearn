x = []
y = ["abc", 1, 0.5, 5//6]
z = [1, 100,1000]

pushfirst!(y, 5)

println(y)
println(y[1])
println(y[end])

popfirst!(z)
println(z)

append!(y, z)
println(y)

push!(y, "hi")
println(y)

println(zeros(10))