#!/bin/bash

# In thông tin yêu cầu của bài lab
echo "Bai 1: Viết một scripts hiển thông tin"

# In thông tin người dùng hệ thống
days=$(date)

echo "To day is: $days"
echo "Hello $USER."
echo "Your cuttent working directory: $PWD"
echo "Your home directory: $HOME"
echo "Please press any key to finish: "; read
echo "------Thanks very much !!------"
