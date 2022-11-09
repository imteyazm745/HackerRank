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
