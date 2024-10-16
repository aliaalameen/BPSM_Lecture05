#!/bin/bash

#Create an index of the countries within the dataset:
IFS=$'\t'
count=0

while read name email city birthday_day birthday_month birthday_year country
do

if test -z ${name} || test ${country} == "country"
then
count=$((count+0))
else
count=$((count+1))

echo -e "${count}\t${name}\t${city}\t${country}"
fi

done < example_people_data.tsv 

