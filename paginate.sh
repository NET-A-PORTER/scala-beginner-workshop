#!/usr/bin/env bash

# This script DOES NOT WORK yet!

NUM_OF_SLIDES=$(grep -E 'data-x="[0-9]+"' index.html | wc -l)

# Replace new line. HACKJOB!
#perl -p -e 's/\n/NEWLINE/' index.html > index.html.tmp

for (( i=1; i<=$NUM_OF_SLIDES; i++ ))
do
	X=$((i * 1500))
	#sed -i "" -e "s/data/data$X/$i" index.html
done

## Put new line back. HACKJOB!
#perl -p -e 's/NEWLINE/\n/' index.html.tmp > index.html
# rm index.html.tmp