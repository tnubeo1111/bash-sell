#!/bin/bash

# Thực thi câu lệnh else nếu câu lệnh if trả về khác 0

testuser=thanhtha
DIRECTORY=/etc/passwd
DIRECTORY_HOME=/home

if grep $testuser $DIRECTORY
then
	echo "This is my frist command"
	echo "This is my second command"
        echo "I can even put in other command beside echo: "
	ls -al $DIRECTORY_HOME/$testuser/.b*i
else
	echo "The user $testuser does not exist on the system."
	echo
fi
