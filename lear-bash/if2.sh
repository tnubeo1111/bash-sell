#!/bin/bash

# Kiểm tra nhiều lệnh trong phần then

testuser=$USER
DIRECTORY=/etc/passwd
DIRECTORY_HOME=/home

if grep $testuser $DIRECTORY
then
	echo "This is my frist command"
	echo "This is my second command"
        echo "I can even put in other command beside echo: "
	ls -al $DIRECTORY_HOME/$testuser/.b*
fi
