#!/bin/bash

# Thực thi câu lệnh elif 

testuser=testuser
DIRECTORY=/etc/passwd
DIRECTORY_HOME=/home

if grep $testuser $DIRECTORY
then
	echo "The user $testuser existed on the system"
elif ls -d $DIRECTORY_HOME/$testuser
then
	echo "The user $testuser does not exist on the system"
	echo "However, $testuser has a directory"
	echo
	ls -al $DIRECTORY_HOME
else
	echo "The user $testuser does not exist on the system"
	echo "And, $testuser does not have a directory"

fi
