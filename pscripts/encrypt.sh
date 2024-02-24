#!/bin/bash
set -e

# install age 

echo "1) Encryption"
echo "2) Decryptio"
read -p "> "

if [[ $todo == "1" ]]; then
	read -p "File i/p name : " $file_enc
	read -p "File o/p name : " $file_op
	age -p -o $file_op $file_enc 
elif [[ $todo == "2" ]]; then
	read -p "File i/p name : " $file_dec
	read -p "File o/p name : " $file_op
	age -d -o $file_op $file_dec
fi