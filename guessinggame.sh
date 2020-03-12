#!/bin/env bash

no=$(echo $(ls -a | wc -l) - 2 | bc) 
guess=-1
echo "guess no of files"

function guessing {
while [[ $guess -ne $no ]]; do
	read guess 
	if [[ -n ${guess//[0-9]/} ]]; then
		echo "input a number"
		guess=-1
	elif [[ $guess -eq $no ]]; then
		echo "correct guess"
	elif [[ $((guess-no)) -gt 5 ]]; then
		echo "very high"
	elif [[ $((no-guess)) -gt 5 ]]; then
		echo "very low"
	else
		echo "almost there"		
	fi
done
}

guessing
