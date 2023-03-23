#!/bin/bash

# IP hoặc tên miền của máy chủ
SERVER_D="192.168.56.114"
SERVER_S="192.168.56.117"

# Tên người dùng để đăng nhập vào máy chủ
USER="test"

# Thư mục trên máy chủ cần sao lưu
SERVER_DIR="/opt/project/bash-sell"

# Thư mục để lưu dữ liệu backup
BACKUP_DIR="/home/test/backups"

# Tên tập tin sao lưu
NAME_FILE="backup_$(date +"%y.%m.%d")_117.tar.gz"

# Lấy địa chỉ IP_Source
IP_S=$(ip a | grep 192.168.56.117 | awk -F" " '{print $2}' | awk -F"/" '{print $1}') 

# Tạo thư mục sap lưu (nếu chưa tồn tại)
mkdir -p $BACKUP_DIR

# Kiểm tra thư mục có tồn tại không. Có thì thực hiện bên trong "then".
if [ -d $SERVER_DIR ] && [ $IP_S == $SERVER_S ]
then
	tar -zcf $BACKUP_DIR/$NAME_FILE $SERVER_DIR
	scp -P 22 -r $BACKUP_DIR/$BACKUP_FILE $USER@$SERVER_D:/home/test
	
	echo "Đã tạo bản sao lưu tệp tin $SERVER_DIR trên máy chủ $SERVER_S và lưu trữ vào $BACKUP_DIR/$BACKUP_FILE trên máy chủ $SERVER_D"
else
	echo "Tệp tin $SERVER_DIR không tồn tại"
fi
