#!/bin/bash

number=${1:-10}  # 인자가 없으면 기본값을 10으로 설정

for ((i=1; i<=number; i++))
do
  echo "hello world"
done
