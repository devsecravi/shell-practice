#!/bin/bash

num=25


if [ $num -eq 23 ]; then
   echo "Given Number is equal to: $num"
elif [ $num -eq 24 ]; then
    echo "Given Number is Equal to: $num"
else
    echo "Given Number is different : $num"
fi


for package in $@;
     dnf list installed $package
do
        if [ $? -ne 0 ]; then
            echo "instaling $package"
            dnf install $package -y
        else 
            echo "already installed package name: $package"
        fi
done

