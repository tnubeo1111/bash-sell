#!/bin/bash

# Reading value from a file

file="file.txt"

for stage in $(cat $file)
do
	echo "Visit beautiful $stage"
done
