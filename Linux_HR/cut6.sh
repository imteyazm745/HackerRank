<<COMMENTS
we need to print the characters from the thirteenth position to the end.
Input Format
A text file with lines of ASCII text only.
Constraints
1 <= N <= 100
(N is the number of lines of text in the input file)
Output Format
The output should contain N lines. For each input line, print the characters from thirteenth position to the end.

Sample Input

New York is a state in the Northeastern and Mid-Atlantic regions of the United States. 
New York is the 27th-most extensive, the third-most populous populated of the 50 United States. 
New York is bordered by New Jersey and Pennsylvania to the south.
About one third of all the battles of the Revolutionary War took place in New York.
Henry Hudson's 1609 voyage marked the beginning of European involvement with the area.
Sample Output

a state in the Northeastern and Mid-Atlantic regions of the United States. 
the 27th-most extensive, the third-most populous populated of the 50 United States. 
bordered by New Jersey and Pennsylvania to the south.
ird of all the battles of the Revolutionary War took place in New York.
's 1609 voyage marked the beginning of European involvement with the area.

COMMENTS
#1
while read n
do
echo $n | cut -c 13-
done

#2
while read text
do
    echo "${text:12}"
done

#3
cut -c13- $1
