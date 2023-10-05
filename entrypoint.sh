#!/bin/sh -l


find -name "apache-maven-2.2.1"
#mvn --version

echo "Hello $1"
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT
