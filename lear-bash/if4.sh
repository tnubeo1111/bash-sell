#!/bin/bash

# Thực thi câu lệnh else nếu câu lệnh if trả về khác 0

testuser=testuser
DIRECTORY=/etc/passwd
DIRECTORY_HOME=/home

if grep $testuser $DIRECTORY
then
	echo "The user $testuser existed on the system"
else
	echo "The user $testuser does not exist on the system."
	
	if ls -d $DIRECTORY_HOME/$testuser
	then
		echo "However, $testuser has a directory"
		echo
		ls -al $DIRECTORY_HOME/$testuser	       
	fi

fi
