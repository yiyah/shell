#!/bin/bash

# ================================================
# @version  2020/07/29
# @abstract The script is for learning shell.
# ================================================

# 1. detect your OS version
# the usage of [[ ]], $()
echo "--- 1. detect your OS version ---"
if [[ $(lsb_release -sc) == *"xenial"* ]]; then
    echo "OS version detected as $(lsb_release -sc) (16.04)"
elif [[ $(lsb_release -sc) == *"bionic"* ]]; then
    echo "OS version detected as $(lsb_release -sc) (18.04)"
else
    echo "Oh no, I don't know what the OS is !"
fi

echo

# 2. detect who is using the script
# the usage of [[ ]], $variable
echo "--- 2. detect who is using the script ---"
author="hzh"
if [[ $author == "" ]]; then
    echo "oh, you are not set the name"
elif [[ $(whoami) == $author ]]; then
    echo "baby, it's you! $(whoami)"
else
    echo "oh, you are not me! You are $(whoami)."
fi

echo 

# 3. judege the number
# the usage of read, (( ))
echo "--- 3. judge the number ---"
read -p "input your (integer) gratude: " gratude
if ((gratude < 101 && gratude > 89 )); then
    echo "you get A!"
elif ((gratude > 79 && gratude < 90)); then
    echo "you get B!"
elif ((gratude > 69 && gratude < 80)); then
    echo "you get C!"
elif ((gratude < 70 && gratude > -1)); then
    echo "oh, you get D!"
else
    echo "oh, forget to tell you please input the number from 0~100!"
fi
