# Ref(1) разместит в памяти число 1 и вернёт указатель на это значение
pnt1 = Ref(1)
# для того чтобы считать или изменить значение нужно написать []
println(pnt1[]) # 1

pnt1[] = pnt1[] + 11 
println(pnt1[]) # 12

a = Ref(3)
b = Ref(10)

f(x) = a[] * x + b[]

function update!(a, b)
   a[] -= 1
   b[] -= 2
end

print(f(1))
update!(a, b)
print(f(1))