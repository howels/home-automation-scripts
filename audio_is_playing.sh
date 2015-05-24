#!/bin/bash

#maximum value of sample before its classified as not-silence
volume_threshold=10
#number of loops with no signal before changing state from playing to silence
silence_delay=6
#delay in seconds to wait at the end of each loop
loop_delay=5
#file to log state changes
logfile="/tmp/audioisplaying.log"

log () {
        timestamp=`date +"%Y-%m-%d_%H-%M-%S"`
        echo "$timestamp : $1" >> "$logfile"
}

echo "1" > /tmp/audioisplaying
counter=0
power="1"
log "Starting to monitor audio output"
while :
do
        volume=`parec --device=1 --latency=2 --channels=1 2>/dev/null | od -N2 -td2 | head -n1 | cut -d' ' -f2- | tr -d ' ' | perl -pe 's/^-//'`
        oldpower="$power"
        if [ "$volume" -lt "$volume_threshold" ]
        then
                echo "quiet"
                ((counter++))
        else
                echo "heard something"
                counter=0
        fi
        if [ "$counter" -gt "$silence_delay" ]
        then
                echo "announcing silence"
                power="0"
                if [ "$oldpower" != "$power" ]
                then
                        log "signal switching off"
                fi
                echo "0" > /tmp/audioisplaying
                ssh stephen@192.168.0.199 /home/stephen/ener_s1_off.sh
        else
                echo "announcing signal"
                power="1"
                if [ "$oldpower" != "$power" ]
                then
                        log "signal switching on"
                fi
                echo "1" > /tmp/audioisplaying
                ssh stephen@192.168.0.199 /home/stephen/ener_s1_on.sh
        fi
        sleep "$loop_delay"
done
