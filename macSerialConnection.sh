#!/bin/bash
#
# Title:         Mac Serial Connect
# Author:        NightStalker
# Version:       1.0
#
# Finds the Bash Bunny in the /dev/cu.* location and
# prompt you to connect to it.

clear

bunnyloc=`ls /dev/cu.* | grep usbmodem`
echo "Bash bunny is located at: $bunnyloc"
read -r -p "Would you like to connect to it? (Y/N): " connanswer
echo $connanswer

if [ "$connanswer" == "N" -o "$connanswer" == "n" ]
	then
		exit 0
elif [ "$connanswer" == "Y" -o "$connanswer" == "y" ]
	then
		screen $bunnyloc 115200
fi

