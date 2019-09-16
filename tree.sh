#!/bin/bash

BASE_IFS=$IFS
IFS=$'\n'

list_recursive ()
{
	local filepath=$1
	local intent=$2

	echo "${intent}${filepath##*/}"
	

	if [ -d "$filepath" ]; then 
		local fname

	 	for fname in $(ls "$filepath")
		do
			list_recursive "${filepath}/${fname}" "  ${intent}"
		done
	  	#ディレクトリである場合は、その中に含まれるファイルやディレクトリを一覧表示する
        fi      
}

list_recursive "$1" ""



IFS=$BASE_IFS
