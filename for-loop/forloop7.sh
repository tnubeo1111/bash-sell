#!/bin/bash

# Dùng lệnh for để lặp qua các file trong thư mục.

directory=/opt/project/bash-sell/*

for file in $directory 
do
	if [ -d $file ]
	then
		echo "$file is a directory"
	elif [ -f $file ]
	then
		echo "$file is a file"
	fi
done
