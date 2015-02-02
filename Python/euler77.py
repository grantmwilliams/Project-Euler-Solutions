#Project Euler Problem 77
import time

t0 = time.time()

primes = [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79]

L, target = 5000, 11
while True:
    ways = [1] + [0]*target
    for p in primes:
        for i in range(p, target+1):
            ways[i] += ways[i-p]
    if ways[target] > L: break
    target += 1

t1 = time.time()

print "First value written as the sum of primes \nin over", L, "ways:", target

print (t1-t0)