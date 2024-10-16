	#!/bin/bash

#list accession for all HSPs.
#list the alignment length.
#list percent ID
grep -v "#" blastoutput2.out | awk 'BEGIN{OFS="\t";}

{
print "Subject accession number:" $2;
print "Alignment length: " $4;
print "% identity:" $3;
}'

#Show HSPs with more than 20 mismatches

grep -v "#" blastoutput2.out | awk '($5 > 20)'| more

#List the first 20 HSPs that have fewer than 20 mismatches

awk '($1!="#" && $5 > 20)' blastoutput2.out | head -n20

#list the 10 HSPs with the highest bitscores.

grep -v "#" blastoutput2.out | sort -k12,12nr | head -n10 | cut -f1,12

#list start positions of all matches when HSP subject accession contains AEI.

grep -v "#" blastoutput2.out | cut -f2,7 | grep "AEI" | cut -f2

#How many subject sequences have more than one HSP.

grep -v "#" blastoutput2.out | cut -f2 | sort | uniq -c |awk '($1 > 1)' | wc -l

#what percentage of each HSP is made up of mismatches? 


grep -v "#" blastoutput2.out | awk '{

percent = ($5/$4) * 100 ;

print "Subject accession number:" $2 "\t percentage mismatch: " percent ;
}'

