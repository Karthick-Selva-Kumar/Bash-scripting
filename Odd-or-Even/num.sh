#!/bin/bash

echo "Enter the number:"
read num
if [ $((num % 2)) -eq 0 ]; then
	echo "The given number is Even"
else
	echo "The given number is Odd"
fi
