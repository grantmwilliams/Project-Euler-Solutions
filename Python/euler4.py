import time
start = time.time()

def reverse(n):
    reversed = 0
    while (n > 0):
        reversed = 10 * reversed + n%10
        n = n/10
    return reversed

def isPalindrome(n):
    return n == reverse(n)


largestPalindrome = 0
a = 999
while (a > 100 or a == 100):
    if (a % 11==0):
        b = 999
        db = 1
    else:
        b = 990 # The largest number less than or eual 999 and divisible by 11
        db = 11

    while (b > a or b == a):
        if (a*b < largestPalindrome or a*b == largestPalindrome):
            break

        if (isPalindrome(a*b)):
            largestPalindrome = a*b

        b = b-db
    a = a-1


finish = time.time()
print(largestPalindrome)
print(finish-start)