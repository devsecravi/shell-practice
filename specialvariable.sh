#!/bin/bash


echo "All argument passed to script: $@"
echo "Number of vars passed to script: $#"
echo "Script Name: $0"
echo "Print which director you are in: $PWD"
echo "which running the script: $USER"
echo "who is running the script: $HOME"
echo "pid of the script: $$"
cho "pid of the running background: $!"
echo "All argument passed to script: $*"
sleep 10 &