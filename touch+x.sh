#!/bin/bash

filename="$1"

touch "$filename" && chmod a+x "$filename"
vim "$filename"
