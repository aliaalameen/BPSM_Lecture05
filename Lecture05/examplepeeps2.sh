#!/bin/bash

rm -fr *.details

IFS=$'\t';
count=0;

while read name email city birthday_day birthday_month birthday_year country
do
if
 test -z ${name} || test ${country} == "country"
then
echo "Ignoring..."

else
count=$((count+1))
echo -e "${count}\t${name}\t${city}\t${country}" >> ${country// /}.details
fi
done < example_people_data.tsv


