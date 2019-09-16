#!/bin/bash

filename="$(date '+%Y-%m-%d').txt"
dirname="${HOME}/diary"

diaryfile="${dirname}/${filename}"

if [ ! -d "$dirname" ]; then 
       mkdir -p "$dirname"
fi       

if [ ! -e "$diaryfile" ]; then 
	
	echo "$(date '+%Y/%m/%d')" >> "$filename"
fi


vim "$diaryfile"
