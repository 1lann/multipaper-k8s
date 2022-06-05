#!/bin/bash
# /bin/bash -c "cd /worker && java $JAVA_ARGS -jar /worker/multipaper.jar nogui"
screen -dmS multipaper-master "/bin/sh" "-c" "cd /master/server && java -jar /master/multipaper-master.jar 35353 25565 | tee /master/server.log"
sleep 3
tail -f /master/server.log &

while screen -list | grep -q multipaper-master
do
    sleep 1
done
