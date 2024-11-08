#!/bin/bash

# 파일 이름
db_file="DB.txt"

if [ $# -ne 1 ]; then
    echo "Usage: $0 <search_term>"
    exit 1
fi

search_term=$1

# 검색과 결과 출력
results=$(grep -i "$search_term" "$db_file")

if [ -n "$results" ]; then
    echo "$results"
else
    echo "검색어 '$search_term'와 일치하는 항목이 없습니다."
fi
