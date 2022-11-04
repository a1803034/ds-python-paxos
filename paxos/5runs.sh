#!/bin/bash

echo "Test cycle beginning"
echo "================================"

for i in {1..5};
do
    echo "TEST $i"
    python test.py > output.txt
    grep "Number of nodes:" output.txt
    grep "seconds" output.txt
    echo "================================"
    sleep 4
done
