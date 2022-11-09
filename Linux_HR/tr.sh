#In this challenge, we practice using the tr command because it is a useful translation tool in Linux.
#In a given fragment of text, replace all parentheses () with box brackets [].

tr "()" "[]"

<<COMMENTSIn this challenge, we practice using the tr command because it is a useful translation tool in Linux.
In a given fragment of text, delete all the lowercase characters a-z.

Sample Input
Hello
World
how are you

Sample Output
H
W
COMMENTS

tr -d [:a-z:]
<<COMMENTS
In a given fragment of text, 
replace all sequences of multiple spaces with just one space.

Sample Input

He  llo
Wor  ld
how  are  you

Sample Output

He llo
Wor ld
how are you
COMMENTS

tr -s ' '
 
