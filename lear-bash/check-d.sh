#!/bin/bash

# kiểm tra xem thư mục có tồn tại không. Nếu có thì cd vào

jump_directory=/opt/project/bash-sell/lear-bash/

if [ -d $jump_directory ]
then
	echo "The $jump_directory directory exist"
	cd $jump_directory
	ls
else
	echo "The $jump_directory directory not exist"
fi
