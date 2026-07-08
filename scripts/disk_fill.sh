#!/bin/bash

echo "Creating a 5GB file..."

fallocate -l 5G test.img

echo "Disk usage increased."
