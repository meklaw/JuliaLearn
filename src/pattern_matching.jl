using Match

@match([1,2,3], [a, b...])

println(a)
println(b)

item = 1

 answer = @match item begin
   1 => "one"
   2 => "two"
   _ => "hm..."
 end
# one
 println(answer)


 item = 7

 answer =  @match item begin
     0      => 5
     1 || 2 => 4
     3:10   => 3
     _      => 2
 end
#  3
 println(answer) 


 println(@match([1 2 3; 4 5 6], [[1,4] a b]))
 println(@match([1 2 3 0; 4 5 6 10], [[1,4] a b...]))