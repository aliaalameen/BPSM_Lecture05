#!/bin/bash

IFS=$'\t';
count=0
older=1980

while read name email city birthday_day birthday_month birthday_year country
do

if test -z ${name} || test ${country} == "country"
then
continue
else
count=$((count+1))
    if test ${birthday_year} -ge ${older}
    then
    echo -e "${count}\t${name}\t${birthday_year}\t${country}" >> ${country// /}.younger
    else
    echo -e "${count}\t${name}\t${birthday_year}\t${country}" >> ${country// /}.older
    fi
fi

done < example_people_data.tsv


