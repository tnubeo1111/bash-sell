#!/bin/bash

# Testing the for variable after the looping

for test in n Alabama Alaska Arizona Arkansas California Colorado
do
	echo "The next state is $test"
done
echo
echo "The last state we visited was $test"
test=Connecticut
echo "Wait, now we are visiting $test"
