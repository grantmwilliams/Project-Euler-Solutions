import time
t0 = time.time()

i = 1
j = 1
s = i + j
for i in range(2,1000):
    n = i + j
    i = j
    j = n
    if n > 4000000:
        break;
    if n%2 == 0:
        s += n
t1 = time.time()

print s
print(t1-t0)
