#!/bin/bash

for i in `ls`
do
	if [ ! -d $i ]; then
		file $i
	fi
done
