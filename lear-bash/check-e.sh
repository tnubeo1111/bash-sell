#!/bin/bash

# kiểm tra xem thư mục có tồn tại và có tệp bên trong thư mục hay không.

directory=/tmp
file_name="update"

if [ -e $directory ]
then
	echo "The $directory directory exist"
	echo "OKE...! checking $file_name"

	if [ -e $directory/$file_name ]
	then
		echo "The $file_name is a File in $directory"
		echo "OKE...! update $file_name"
		date >> $directory/$file_name
		cat $directory/$file_name
	else
		echo "The $file_name does not a file in $directory"
		echo "Nothing update"
	fi
else
	echo "The $directory does not directory exist"
 	echo "Nothing update"
fi
