#!/bin/bash

# IP hoặc tên miền của máy chủ
SERVER="192.168.56.114"

# Tên người dùng để đăng nhập vào máy chủ
USER="test"

# Thư mục trên máy chủ cần sao lưu
SERVER_DIR="/opt/project/bash-sell"

# Thư mục để lưu dữ liệu backup
BACKUP_DIR="/home/test/backups"

# Tên tập tin sao lưu
NAME_FILE="backup_$(date +"%y.%m.%d")_117.tar.gz"

# Tạo thư mục sap lưu (nếu chưa tồn tại)
mkdir -p $BACKUP_DIR

# Tạo bản sao lưu và luuw trữ trên máy chủ khác backup
tar -zcf $BACKUP_DIR/$NAME_FILE $SERVER_DIR

scp -P 22 -r $BACKUP_DIR/$BACKUP_FILE $USER@$SERVER:/home/test



#echo "Đã tạo bản sao lưu tệp tin $SERVER_DIR trên máy chủ và lưu trữ vào $BACKUP_DIR/$BACKUP_FILE trên máy chủ backup"
