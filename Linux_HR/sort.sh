<<COMMENTS
In this challenge, we practice using the sort command to sort input in text or TSV formats.
Given a text file, order the lines in lexicographical order.

Sample Input

Dr. Rajendra Prasad     January 26, 1950    May 13, 1962
Dr. S. Radhakrishnan        May 13, 1962    May 13, 1967
Dr. Zakir Hussain       May 13, 1967    August 24, 1969
Shri Varahagiri Venkata Giri        August 24, 1969 August 24, 1974
Shri Fakhruddin Ali Ahmed       August 24, 1974 February 11, 1977
Shri Neelam Sanjiva Reddy       July 25, 1977   July 25, 198

Sample Output

Dr. Rajendra Prasad     January 26, 1950    May 13, 1962
Dr. S. Radhakrishnan        May 13, 1962    May 13, 1967
Dr. Zakir Hussain       May 13, 1967    August 24, 1969
Shri Fakhruddin Ali Ahmed       August 24, 1974 February 11, 1977
Shri Neelam Sanjiva Reddy       July 25, 1977   July 25, 198
Shri Varahagiri Venkata Giri        August 24, 1969 August 24, 1974

COMMENTS

sort 

#when sort command is executed on the file without any option. 
#It sorts lines in test file and displays sorted output.

#Question 2 
#order the lines in reverse lexicographical order (i.e. Z-A instead of A-Z).

sort -r
#The following sort command sorts lines in reverse order and displays sorted output.

<<COMMENTS
Question 3 :-
You are given a text file where each line contains a number. The numbers may be either an integer or have decimal places. There will be no extra characters other than the number or the newline at the end of each line. 
Sort the lines in ascending order - so that the first line holds the numerically smallest number, and the last line holds the numerically largest number.

Sample Input
9.1
43.7
2.2
62.1
2.1
9.3
43.5
4.6
44.6
4.7
42.7
47.4
46.6
4.5
55.6
4
9.2
66.6
2
2.3

Sample Output
2
2.1
2.2
2.3
4
4.5
4.6
4.7
9.1
9.2
9.3
42.7
43.5
43.7
44.6
46.6
47.4
55.6
62.1
66.6
COMMENTS
sort -n

#The text file, with lines re-ordered in descending order (numerically).

sort -n -r
<<COMMENTS
INPUT Same

OUTPUT
66.6
62.1
55.6
47.4
46.6
44.6
43.7
43.5
42.7
9.3
9.2
9.1
4.7
4.6
4.5
4
2.3
2.2
2.1
2
COMMENTS
