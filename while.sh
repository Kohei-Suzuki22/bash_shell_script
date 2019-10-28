#!/bin/bash

while true
do
	echo "Continue? (y/n)"
	read input
	
	case $input in
		"n") break;;
		"y") continue;;
		*)   echo "Please input y or n.";;
	esac
done
