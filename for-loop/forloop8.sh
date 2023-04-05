#!/bin/bash

# Dùng lệnh for để lặp qua các file trong thư mục.

directory=/opt/project/bash-sell/*

for file in $directory  /opt/project/bash-sell/badfor
do
	if [ -d "$file" ]
	then
		echo "$file is a directory"
		echo
	elif [ -f $file ]
	then
		echo "$file is a file"
		echo
	else
		echo "$file doesn't exitst"
		echo
	fi
done
