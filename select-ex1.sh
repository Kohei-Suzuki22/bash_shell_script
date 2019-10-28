#!/bin/bash

select var in item1 item2 item3 item4 exit
do
	echo "あなたが選んだのは$varです。"

	if [ "$var" = exit ]; then
		break
	fi
done
