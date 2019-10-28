#!/bin/bash

select var in pwd ls exit
do
	case $var in
		"ls")
			ls -1;;
		"pwd")
			pwd;;
		"exit")
			break;;
		*)
			echo "あなたの入力した番号は$REPLYです"
	esac
done
