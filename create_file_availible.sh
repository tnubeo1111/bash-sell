#!/bin/bash

container=$1
directory=$2

mkdir -p $directory
grep $container shipments.csv > $directory/${container}_report.csv

echo Wrote report $directory/${container}_report.csv
