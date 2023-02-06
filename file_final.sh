#!/bin/bash

container=$1
directory=$2

mkdir -p -- $directory
grep -- $container $input_file > $directory/${container}_report.csv

echo Wrote report $directory/${container}_report.csv
