import random
# A = [random.randint(-40,40) for i in range(50)]
A = [1, 2, 3, 4, 5, 6, 7, 8, 9,10]

n = 3


m = "["
for i in range(n):
    m+="[ "
    for j in range(n):
        m += str(A[i * n + j]) + ", "
        # print(A[i * n + j])
    m += "],\n"
m = m[:-2] + "]"
print(m)