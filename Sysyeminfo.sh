#!/bin/bash

echo "System information"
echo "******************"

echo "kernal Information: $(uname -r)"

echo "CPU Information: $(uname -m)"

echo "Totalo Memory: $(free -m)"

echo "Disk Used: $(df -h)"


