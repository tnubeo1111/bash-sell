#!/bin/bash

# Kiểm tra xem thư mục có tồn tại và có các file bên trong hay không.

directory=/tmp/item

if [ -e $directory ]
then
	echo "The $directory directory exist"
	echo "But it is a file"
	echo "-----Checking-----100%"
	echo

	if [ -f $directory ]
	then
		echo "Yes, the $directory is a file"
		echo "OK...!, Update $directory"
	else
		echo "No, The $directory is a file"
		echo "Nothing, Update"
	fi		
else
	echo "The $directory directory does not exist"
 	echo "Nothing update"
fi	
