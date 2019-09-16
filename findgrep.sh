#!/bin/bash

usage ()
{
	local script_name=$(basename "$0")

	cat << EOF

Usage: $script_name PATTERN [PATH] [NAME_PATTERN] 
Find file in current dirextory recursively, and print Lines which match PATTERN.

  PATH		find file in PATH directory, instead of current directory.
  NAME_PATTERN	specify name pattern to find file.

Examples:
  $script_name return
  $script_name return ~ '*.txt'

EOF
}


if [ "$#" -eq 0 ]; then 
	usage
	exit 1 
fi





pattern=$1
directory=$2
name=$3

if [ -z "$directory" ]; then
	directory='.'
fi

if [ ! -d "$directory" ]; then
	echo "$0: ${directory}: No such directory" 1>&2
	exit 2 
fi



if [ -z "$name" ]; then
	name='*'
fi



find "$directory" -type f -name "$name" | xargs grep -nH "$pattern"
