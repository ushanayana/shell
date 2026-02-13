#!/bin/bash

echo "All variables: $@"
echo "Number of variables passed:$#"
echo "script name:$0"
echo "currenytworking directory:$PWD"
echo "home directoryof current user:$HOME"
echo "which user run this script:$USER"
echo "Hostname: $HOSTNAME"
echo "process id of the current shell script:$$"
sleep 60 &
echo "proces id of last background command:$!"