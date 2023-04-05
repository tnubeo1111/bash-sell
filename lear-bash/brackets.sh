#!/bin/bash

# using pattern matching

if [[ $USER == t* ]]
then
	echo "Hello $USER"
 else
	  echo "Sorry, I do not know you"
fi
