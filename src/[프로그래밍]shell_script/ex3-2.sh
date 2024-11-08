#!/bin/bash

expression=$1

number1=$(echo $expression | grep -oP '^\d+')
operator=$(echo $expression | grep -oP '[+-]')
number2=$(echo $expression | grep -oP '\d+$')

if [[ $operator == "+" ]]; then
    result=$((number1 + number2))
elif [[ $operator == "-" ]]; then
    result=$((number1 - number2))
else
    echo "지원되지 않는 연산자입니다."
    exit 1
fi


echo "$result"

