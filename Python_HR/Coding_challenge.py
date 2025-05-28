'''Write a program to find whether a no is power of two.
Examples : Input : n = 4 Output : Yes 2^2 = 4
Input : n = 7 Output : No
Input : n = 32 Output : Yes 2^5 = 32'''

n = int(input())
if n == 0:
    print("No")
else:
    while n % 2 == 0:
        n = n//2

    if n == 1:
        print("Yes")
    else:
        print("No")


# Write a program to print all numbers from 1 to n, but:
# If the number is divisible by 3 → print "Fizz"
# If the number is divisible by 5 → print "Buzz"
# If divisible by both 3 and 5 → print "FizzBuzz"
# Otherwise → print the number itself

n = int(input())
for i in range(1, n+1):
    if i % 3 == 0 and n % 5 == 0:
        print("FizzBuzz")
    elif i % 3 == 0:
        print("Fizz")
    elif i % 5 == 0:
        print("Buzz")
    else:
        print(i)
