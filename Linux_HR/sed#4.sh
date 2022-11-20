<<COMMENTS

Task

Given n lines of credit card numbers, mask the first 12 digits of each credit card number with an asterisk (i.e., *) and print the masked card number on a new line. Each credit card number consists of four space-separated groups of four digits. For example, the credit card number 1234 5678 9101 1234 would be masked and printed as **** **** **** 1234.

References
You may find the following links helpful in learning about sed:

Sed: An Introduction and Tutorial
The TLDP Guide
Some Practical Examples
A StackOverflow question on a slightly modified version of this task where the solution involves backreferences.
A ttuorial from TheGeekStuff detailing the use of groups and backreferences.

Input Format

Each line contains a credit card number in the form dddd dddd dddd dddd, where d denotes a decimal digit (i.e., 0 through 9). There are a total of n lines of credit card numbers.

Output Format

For each credit card number, print its masked version on a new line.

Sample Input

1234 5678 9101 1234  
2999 5178 9101 2234  
9999 5628 9201 1232  
8888 3678 9101 1232  
Sample Output

**** **** **** 1234
**** **** **** 2234
**** **** **** 1232
**** **** **** 1232
Explanation

Observe that the first twelve digits have been masked for each credit card number, and they are printed in the same order as they were received as input.

COMMENTS

sed -r 's/[0-9]{4}[ ]/**** /g'
          OR
sed -E 's/[0-9][0-9][0-9][0-9] /**** /g'
