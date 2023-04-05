#!/bin/bash

# So sánh chuỗi có bằng nhau hoặc không bằng nhau.

testuser=test

if [ $testuser = $USER ]
then
	echo "Welcome $testuser"
else
	echo "This is not $testuser"
fi
