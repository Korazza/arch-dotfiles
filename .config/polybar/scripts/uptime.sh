#!/bin/sh

seconds=$(awk '{print $1}' /proc/uptime)
minutes=$(echo "($seconds%3600)/60" | bc)
hours=$(echo "$seconds/3600" | bc)
days=$(echo "$seconds/86400" | bc)


echo %{O16px}$(printf "%dd %dh %dm" $days $hours $minutes | sed -r 's/0(d|h)\s//g')