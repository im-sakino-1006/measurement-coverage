#!/bin/sh -l
cd root
ls -la
pwd

#mvn --version

echo "Hello $1"
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT
