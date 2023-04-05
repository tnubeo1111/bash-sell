#!/bin/bash

# Sử dụng AND boolear để làm điều kiện kiểm tra. Cả 2 điều kiện phải đúng thì phần then mới được thực thi.

directory=/tmp
file=update

if [ -d $directory ] && [ -w $directory/$file ]
then
	echo "The file exist and you can write to it"
	date >> $directory/$file
	cat $directory/$file
else
	echo "I cannot write to the file"
fi
