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
