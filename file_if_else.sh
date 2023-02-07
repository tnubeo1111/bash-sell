#!/bin/bash

if [[ ! $1 ]]; then
        echo "Error: missing parameter: container name"
        exit 1
fi

container=$1
directory=$2

mkdir -p -- $directory
if grep -- $container $input_file > $directory/${container}_report.csv
then
	echo "Wrote report $directory/$container.csv"
else
	echo "Container $container not found in $input_file"
fi
