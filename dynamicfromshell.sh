#!/bin/bash

START=$(date +%s)

echo "starting time is: $START"

END=$(date +%s)
echo "End time is:$END"
TOTAL=$(($START-$END))

echo "Script Excuted Time:$TOTAL"