#!/bin/bash

grep "\.edu" example_people_data.tsv | sort -k7,7 -k1,1r
