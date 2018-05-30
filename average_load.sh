#!/usr/bin/env bash

average_load=$(uptime | awk -F', ' '{print $3}' | sed 's/ load average/"average_load"/')
echo "{"$average_load"}" > avrg_load.json

