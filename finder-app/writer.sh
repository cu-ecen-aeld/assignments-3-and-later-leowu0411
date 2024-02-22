#!/bin/bash

file="$1"
content="$2"

# Check if the number of arguments is correct
if [ $# -ne 2 ]; then 
    echo "Amount of parameters error"
    exit 1
fi

mkdir -p $(dirname ${file})

# Write content to file
echo "${content}" > "${file}"

# Check if the file was created successfully
if [ $? -ne 0 ]; then
    echo "Error: Failed to create or write to the file"
    exit 1
fi

