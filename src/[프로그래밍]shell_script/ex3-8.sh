#!/bin/bash

# 파일 이름
db_file="DB.txt"

if [ $# -lt 2 ]; then
    echo "Usage: $0 <name> <birthday/phone>"
    exit 1
fi

name=$1
info=$2

echo "$name $info" >> "$db_file"

