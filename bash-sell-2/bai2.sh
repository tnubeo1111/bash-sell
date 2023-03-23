#!/bin/bash

echo "Bài 2"

# Nhập 2 số bất kì vào bàn phím
echo "Nhập số thứ nhất: "; read a
echo "Nhập số thứ hai: "; read b

# Các phép toán
tong=$(($a + $b))
hieu=$(($a - $b))
nhan=$(($a * $b))
chia=$(($a / $b))
chia_du=$(($a % $b))

echo "Tổng của 2 số là: $tong"
echo "Hiệu của 2 số là: $hieu"
echo "Nhân của 2 số là: $nhan"

if test $b -eq 0;
then
	echo "Không chia được"
else
	echo "Chia của 2 số là: $chia"
	echo "Chia lấy dư của 2 số là: $chia_du"
fi
