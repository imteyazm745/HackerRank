<<COMMENTS
Middle of a text file
Display the lines (from line number 12 to 22, both inclusive) of a given text file.
'head' command is used to read the file from the beginning 
and the 'tail' command is used to read the file from the ending.
COMMENTS

#Display the lines (from line number 12 to 22, both inclusive) of a given text file.
head -n 22 | tail -n 11

#Display the last 20 lines of an input file.
tail -n 20

#Display the last  characters of an input file.
tail -c 20

