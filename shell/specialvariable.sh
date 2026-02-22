#!/bin/bash


echo "All read Argument from Console: $@"
echo "All read Argument from Console in single entity: $*"
echo "All read Argument from Console count: $#"



echo "Presnt PID: $$"
sleep 10 &
echo "PID backgroup process: $!"

printmultiple(){
    echo "Current ROOT USER: $USER"
    echo "Current HOME DIRECTORY: $HOME"
    echo "PRESENT WORK DIRECTORY: $PWD"
    echo "Shell Script Fetch File Name: $0"
}

printmultiple 

printmultiple


