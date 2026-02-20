#!/bin/bash

NUMBER=23

if [ $((NUMBER%2)) -eq 0]; then
     echo "given number is even:$NUMBER"
    else
     echo "given number is odd:$NUMBER"
fi

