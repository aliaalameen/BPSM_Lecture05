#!/bin/bash

#using esearch and efetch to get a fasta file remotely:


esearch -db nucleotide -query "Hominoidea[organism]" | efetch -format fasta > hominoidea.fasta

#using plotcon to create a conservation plot:

plotcon -sequence hominoidea.fasta -winsize 15  -graph x11


