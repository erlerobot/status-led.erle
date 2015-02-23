#!/bin/bash

# Expose the interface
echo 117 > /sys/class/gpio/export
echo "out" > /sys/class/gpio/gpio117/direction

while true
do
	echo 0 > /sys/class/gpio/gpio117/value 
	sleep 1
	echo 1 > /sys/class/gpio/gpio117/value 
done
