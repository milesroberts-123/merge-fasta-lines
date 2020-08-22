#!/bin/bash
while getopts i:o:d:p: option; do
		case "${option}" in
			i) INFILE=${OPTARG};;
			o) OUTFILE=${OPTARG};;
			d) DIRECTORY=${OPTARG};;
			p) PREFIX=${OPTARG};;
		esac
	done

if [ -n "$INFILE" ] && [ -n "$OUTFILE" ];
	then
		awk '/^>/ {printf("%s%s\n",(N>0?"\n":""),$0);N++;next;} {printf("%s",$0);} END {printf("\n");}' < $INFILE > $OUTFILE
	fi

if [ -n "$DIRECTORY" ] && [ -n "$PREFIX" ];
	then
		cd $DIRECTORY
		for file in *.fasta
			do
				awk '/^>/ {printf("%s%s\n",(N>0?"\n":""),$0);N++;next;} {printf("%s",$0);} END {printf("\n");}' < $file > $(echo $PREFIX)_$file
			done
	fi
