#!/bin/bash

echo "리눅스가 재미있나요? (yes/no)"

read user_input

#case별
case $user_input in

    Yes | yes | YES | Y | y )  # Y 또는 y 또는 yes 또는 Yes
        echo "yes"
        ;;
    [nN]*) # no 또는 nonono
        echo "no"
        ;;
    *)
        echo "yes or no로 입력해 주세요."
        ;;
esac
