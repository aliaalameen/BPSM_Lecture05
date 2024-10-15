#!/usr/bin/awk -f


{
if (substr($1,1,1) == ">")         #conditional - looks at SUBSTR(ING) i.e. the characters in  line 1 ($1), 1 starting position, 1 number of characters.
{
print "This is a header line: " $0 ;      #prints whole current line.
hline=FNR ;                               #FNR is file number record, the number of the line. When it encounters a header line, it stores the number in this variable.
}

if (FNR==hline+1)                 #now, if the FNR is 1 more than the stored headerline FNR, it will print that second line (sequence line)
{
print "First line is: " $0 ;
first_seq_character = substr($0,1,1)            #we take our current line and look from the 1 position at the 1 character.
print "First character is:" first_seq_character
print first_seq_character > "first_seq_character.txt"         #output results to textfile. Awk cannot deal with . so put it in quotations

}

}
