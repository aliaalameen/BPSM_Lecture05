#!/bin/bash


awk 'BEGIN{FS="\t";}
{
if (NF == 7 && $1 != " " && $1 != "name")
{
if ($1 == "Jan" && length($1) == 3)
{print $0}
}
}' example_people_data.tsv |
wc -l
