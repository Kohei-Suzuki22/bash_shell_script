#!/bin/bash

echo "age:"
read age

if [ $age -ge 20 ]; then
	echo "you can drink."
else
	echo "you cannot drink."
fi
