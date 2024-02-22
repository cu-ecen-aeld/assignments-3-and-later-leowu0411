#!/bin/bash

filedir=$1
keyword=$2

if [ $# -ne 2 ]; then 
    echo "Amount of parameters error"
    exit 1
fi

if [ ! -d "$filedir" ]; then 
    echo "$filedir is not a directory"
    exit 1
fi

file_num=$(find "$filedir" -type f | wc -l)
match_files=$(find "$filedir" -type f -exec grep -c "$keyword" {} \; | awk '{s+=$1} END {print s}')

echo "The number of files are ${file_num} and the number of matching lines are ${match_files}"

