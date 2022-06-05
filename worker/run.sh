#!/bin/bash
JAVA_ARGS="$@"
echo "Running: java $JAVA_ARGS -jar /worker/multipaper.jar"

# /bin/bash -c "cd /worker && java $JAVA_ARGS -jar /worker/multipaper.jar nogui"

screen -dmS multipaper-worker "/bin/bash" "-c" "cd /worker && java $JAVA_ARGS -jar /worker/multipaper.jar nogui | tee /worker/server.log"
sleep 3
tail -f /worker/server.log &

while screen -list | grep -q multipaper-worker
do
    sleep 1
done
