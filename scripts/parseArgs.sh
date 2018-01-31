#!/bin/bash
# Ref:  https://stackoverflow.com/questions/192249/how-do-i-parse-command-line-arguments-in-bash

while [[ $# -gt 0 ]]
do
key="$1"

case $key in
    -p|--project-path)
    PRJPATH="$2"
    shift # past argument
    shift # past value
    ;;
    -ro|--recent-only)
    RECENTONLY="$2"
    shift # past argument
    shift # past value
    ;;
esac
done

. ./validateArguments.sh