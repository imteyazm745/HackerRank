<<COMMENTS

Input Format

N credit card numbers, each in a new line, credit card numbers will have 4 space separated segments with 4 digits each.

Output Format

N lines, each containing a credit card number with the ordering of its segments reversed.

Sample Input

1234 5678 9101 1234  
2999 5178 9101 2234  
9999 5628 9201 1232  
8888 3678 9101 1232
Sample Output

1234 9101 5678 1234  
2234 9101 5178 2999  
1232 9201 5628 9999  
1232 9101 3678 8888 
Explanation

The order of the four segments in the (input) credit card numbers have been reversed.


COMMENTS

sed 's/\([0-9]*\) \([0-9]*\) \([0-9]*\) \([0-9]*\)/\4 \3 \2 \1/'
