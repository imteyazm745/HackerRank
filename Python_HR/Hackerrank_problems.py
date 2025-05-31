# Given an integer, , perform the following conditional actions:

# If n is odd, print Weird
# If n is even and in the inclusive range of 2 to 5, print Not Weird
# If n is even and in the inclusive range of 6 to 20, print Weird
# If n is even and greater than 20, print Not Weird

# Print Weird if the number is weird. Otherwise, print Not Weird.


if __name__ == '__main__':
    n = int(input().strip())
    if n % 2 != 0:
        print("Weird")
    elif n >= 2 and n <= 5:
        print("Not Weird")
    elif n >= 6 and n <=20:
        print("Weird")
    elif n > 20:
        print("Not Weird")


# The list of non-negative integers that are less than n = 3 is [0,1,2]. Print the square of each number on a separate line.

if __name__ == '__main__':
    n = int(input())
    for i in range(0, n):
        print(i*i)
