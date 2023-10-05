#!/bin/sh -l
cd ./127
ls -la
pwd

#mvn --version

echo "Hello $1"
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT
