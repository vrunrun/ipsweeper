#!/bin/bash

# ip address sweeper
# chmod +x ./ipsweeper.sh
# Usage: ./ipsweeper.sh 192.168.1.23

if [ "$1" == "" ]; then
	echo "You forgot an IP address!"
	echo "Syntax: ./ipsweep.sh 192.168.1"
else
	for octet in `seq 1 254`; do
	ping -c 1 $1.$octet | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
fi

# Line 7: '$1' = first input param
# Line 12: Use '&' to make operation asychronous
