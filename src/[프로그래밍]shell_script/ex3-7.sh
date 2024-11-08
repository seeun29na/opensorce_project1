#!/bin/bash

folder_name=$1

# 폴더가 있는지 없는지 확인
if [ ! -d "$folder_name" ]; then
    mkdir "$folder_name"
else
    echo "폴더 '$folder_name'가 이미 존재합니다."
fi

#파일 이름
for i in {0..4}; do
    file_name="file$i.txt"
    file_path="$folder_name/$file_name"
    subfolder_name="$folder_name/file$i"
    subfolder_path="$folder_name/file$i"

    # 파일 생성
    touch "$file_path"

    # 하위 폴더 생성
    if [ ! -d "$subfolder_path" ]; then
        mkdir "$subfolder_path"
    fi

    # 파일을 하위 폴더로 링크
    ln -s "../$file_name" "$subfolder_path/$file_name"
done

