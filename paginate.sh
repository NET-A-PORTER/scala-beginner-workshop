#!/usr/bin/env bash

NUM_OF_SLIDES=$(grep -E 'data-x="[0-9]+"' index.html | wc -l)

for (( i=0; i<=$NUM_OF_SLIDES; i++ ))
do
	X=$((i * 1500))
	sed -i '0,/data-x="[0-9]+"/data-x="$x"/' ./index.html
done