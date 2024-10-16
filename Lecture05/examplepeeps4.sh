#!/bin/bash

IFS=$'\t';
count=0;
month=10
outputfile="Month.${month}.details"

while read name email city birthday_day birthday_month birthday_year country
do

if test -z ${name} || test ${country} == "country"
then
continue
else
  if test ${birthday_month} == "10"
  then
  count=$((count+1))
  echo -e "${count}\t${name}\t${country}" >> ${outputfile}
  fi
fi

done < example_people_data.tsv


