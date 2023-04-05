#!/bin/bash

# Sử dụng một biến để lưu 1 list

list="Alabama Alaska Arizona Arkansas Colorado"
list=$list" connecticut"

for state in $list
do
	echo "Have you ever visited $state?"
done
