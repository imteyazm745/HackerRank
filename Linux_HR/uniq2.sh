<<COMMENTS
 
 In this challenge, we practice using the uniq command to eliminate consecutive repetitions of a line when a text file is piped through it.

Given a text file, count the number of times each line repeats itself. Only consider consecutive repetitions. Display the space separated count and line, respectively. There shouldn't be any leading or trailing spaces. Please note that the uniq -c command by itself will generate the output in a different format than the one expected here.

Sample Output

Explanation

Sample Input

00
00
01
01
00
00
02
02
03
aa
aa
aa
Sample Output

2 00
2 01
2 00
2 02
1 03
3 aa 
Explanation

00 is repeated twice
01 is repeated twice
00 is repeated twice
02 is repeated twice
03 occurs once
aa is repeated thrice  
 
COMMENTS

#SOLUTION1 = uniq -c | cut -b 7-
      #OR
#SOLUTION2 = uniq -c | cut -c 7-  #uniq -c will list the uniq no with the prefix of repeted times cut will remove the 7 spaces prefix to every line

#If we write only "uniq -c" then it will give us a 6 space before result so we need to print from the 7 caracter

