#!/bin/bash

# shiftを使うと、引数をずらすことが出来る。
# $2 → $1 , $3 → $2

echo '$1:' $1;
echo '$2:' $2;
echo '$3:' $3;
shift
echo '$1:' $1;
echo '$2:' $2;
