import time
import math
t0 = time.time()

limit = 600851475143

def primefactors(n):
    if (n% 2==0 and n > 2):
        return False
    return all(n%i for i in range(3,int(math.sqrt(n))+1,2))

for i in range(round(math.sqrt(limit))+1,1,-1):
    if (primefactors(i) and limit%i == 0):
        print(i)
        break

t1 = time.time()
print(t1-t0)