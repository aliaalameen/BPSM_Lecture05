#!/bin/bash

awk 'BEGIN{OFS="\t";}

{
if (substr($1,1,1) == ">")

{print "Header:" $0;
hline=FNR;}

{if (FNR == hline + 1)
{print "Sequence:" $0;
first_character=substr($0,1,1)
print "First Character: " first_character}
}
}' < mock_ncbi.fasta 
