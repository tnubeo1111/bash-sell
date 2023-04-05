#!/bin/bash

# Sử dụng command test trong câu điều kiện if-then.

my_variable=""

if test $my_variable
then
	echo "The $my_variable expression returns a TRUE"
else
	echo "The $my_variable expression returns a FALSE"
fi
