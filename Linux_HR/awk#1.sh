<<COMMENTS
Task
You are given a file with four space separated columns containing the scores of students in three subjects.
The first column contains a single character (A-Z), the student identifier. The next three columns have three numbers each. 
The numbers are between 0 and 100, both inclusive. These numbers denote the scores of the students in English, Mathematics, and Science, respectively.

Your task is to identify those lines that do not contain all three scores for students.

Input Format

There will be no more than 10 rows of data.
Each line will be in the following format:
[Identifier][English Score][Math Score][Science Score]

Output Format

For each student, if one or more of the three scores is missing, display:

Not all scores are available for [Identifier]
Sample Input

A 25 27 50
B 35 75
C 75 78 
D 99 88 76
Sample Output

Not all scores are available for B
Not all scores are available for C
Explanation

Only 2 scores have been provided for student B and student C.

COMMENTS

#Solution1 = awk '{if($4 =="") print("Not all scores are available for"), $1}'

#Solution2 = awk '  NF < 4 {print "Not all scores are available for", $1} '
#NF is a predefined variable whose value is the number of fields in the current record.
#awk automatically updates the value of NF each time it reads a record.

awk '{
if ($2 == "" || $3 == "" || $4 == "")
  print "Not all scores are available for",$1,"";
}'
