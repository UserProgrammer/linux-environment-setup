#!/bin/bash

re='^[0-9]+$' 
port="$1"

if [[ "$port" == "" || ! "$port" =~ $re ]]; then
  echo "port number must be provided as first argument"
  exit 1
fi

pid=$(lsof -i :$port | awk 'FNR == 2 {print $2}')
if [ "$pid" == "" ]; then
  echo "No process is using port ${port}"
else
  echo "Process with pid ${pid} found listening on port ${port}"
fi
