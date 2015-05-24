#!/bin/sh
 echo 0 > /sys/class/gpio/gpio17/value
 echo 0 > /sys/class/gpio/gpio22/value
 echo 0 > /sys/class/gpio/gpio23/value
 echo 0 > /sys/class/gpio/gpio27/value
 echo 0 > /sys/class/gpio/gpio25/value
 echo 0 > /sys/class/gpio/gpio24/value
 sleep 0.1
 echo 1 > /sys/class/gpio/gpio17/value
 echo 1 > /sys/class/gpio/gpio22/value
 echo 1 > /sys/class/gpio/gpio23/value
 echo 1 > /sys/class/gpio/gpio27/value
 sleep 0.1
 echo 1 > /sys/class/gpio/gpio25/value
 sleep 0.5
 echo 0 > /sys/class/gpio/gpio25/value
