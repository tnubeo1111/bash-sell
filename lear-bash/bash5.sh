#!/bin/bash

# Sao chép danh sách thư mục /usr/bin vào tệp nhất ký. 
# Có thể sap chép các file log quan trong để chúng ta có thể check log

today=$(date +%y%m%d)
ls -al /usr/bin > /tmp/log.$today
ls -al /tmp/
