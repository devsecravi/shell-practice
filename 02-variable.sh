STARTTIME=$(date +%s)

echo "Current date and time is ${STARTTIME}"

sleep 10

ENDTIME=$(date +%s)

echo "end time is ${ENDTIME}"

TOTALTIME=$(($ENDTIME - $STARTTIME))
echo "Total time taken is ${TOTALTIME} seconds"