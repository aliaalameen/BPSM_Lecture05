#!/bin/bash

grep -v "#" example_people_data.tsv | awk '

BEGIN{FS="\t";}
{
if(NF==7 && $1 != "name" && $1 != " ")
{print $0;}
}' | wc -l


