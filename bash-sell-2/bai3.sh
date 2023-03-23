#!/bin/bash

# Lưu ý bài này dùng $1 nên lưu ý trước khi chạy Scrips
# ./bai3.sh (nhập vào tên muốn tạo thư mục)
# ví dụ: ./bai3.sh tha

echo "Bài 3: tạo thư mục cho phép người dụng tự nhập"

DIREC=/opt/project2
name=($1)

if [ -x $DIREC ]
then
	mkdir $DIREC/$name
	echo "Tạo thư mục thành công $DIREC/$name trong thư mục $DIREC"
	ls
else
	echo "Tạo thư mục thất bại"
	echo "./bai13.sh tên"
fi
