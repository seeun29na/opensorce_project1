#!/bin/bash

folder_name=$1

if [ ! -d "$folder_name" ]; then
    mkdir "$folder_name"
else
    echo "폴더 '$folder_name'이 이미 존재합니다."
fi

# 5개 파일 생성
for i in {1..5}; do
    touch "$folder_name/file$i.txt"
done


# 파일 압축 
tar -czf "$folder_name/$folder_name.tar" -C "$folder_name" .

# 새 폴더 생성
new_folder="$folder_name/${folder_name}_extracted"
mkdir "$new_folder"

# 압축 해제
tar -xzf "$folder_name/$folder_name.tar" -C "$new_folder"

