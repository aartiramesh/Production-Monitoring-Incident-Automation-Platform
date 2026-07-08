#!/bin/bash

echo "Generating CPU load..."

CORES=$(nproc)

echo "Detected $CORES CPU cores."

for ((i=1; i<=CORES; i++))
do
    yes > /dev/null &
done

echo "CPU stress started."
