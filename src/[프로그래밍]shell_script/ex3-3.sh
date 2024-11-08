#!/bin/bash

weight=$1
height_cm=$2

# 키를 미터로 변환
height=$(awk "BEGIN {print $height_cm / 100}")

bmi=$(awk "BEGIN {print $weight / ($height * $height)}")

if (( $(awk "BEGIN {print ($bmi < 18.5)}") )); then
    echo "저체중입니다."
elif (( $(awk "BEGIN {print ($bmi >= 18.5 && $bmi < 23)}") )); then
    echo "정상체중입니다."
elif (( $(awk "BEGIN {print ($bmi >= 23)}") )); then
    echo "과체중입니다."
fi
