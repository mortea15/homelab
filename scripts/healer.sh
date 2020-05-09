#!/bin/bash

health=$(docker inspect cloak | grep -A 1 "\"Health\":" | grep "Status" | awk -F' ' '{ print $2 }')

if [[ "$health" == *"unhealthy"* ]]; then
  echo "Unhealthy -- Restarting"
  docker restart cloak transmission
fi
