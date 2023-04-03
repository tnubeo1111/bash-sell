#!/bin/bash

# Using numeric test evalucations

value1=10
value2=20

if [ $value1 -gt 5 ]
then
	echo "The test value $value1 is greater than 5"
else
	echo "The test value $value1 is less than 5"
fi
#

if [ $value1 -eq $value2 ]
then
	echo "The value are equal"
else
	echo "The value are different"
fi

