#!/bin/bash

cut -f7 example_people_data.tsv | sort | uniq -c | sort -k1,1nr | head -5

grep "Mozambique" example_people_data.tsv | awk 'BEGIN{FS="\t";}
{
if ($6 <= 1974)
{print $0}
}' | wc -l


