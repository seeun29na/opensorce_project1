#!/bin/bash

run_ls() {
    echo "프로그램을 시작합니다."
    echo "함수 안으로 들어옴."
    if [ $# -eq 0 ]; then
        ls
    else
        ls "$@"
    fi
}


run_ls "$@"
