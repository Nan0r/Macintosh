#!/bin/bash
touch /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress
CLI=$(softwareupdate -l | grep "\*.*Command Line" | head -n 1 | awk -F"*" '{print $2}' | sed -e 's/^ *//' | tr -d '\n')
softwareupdate -i "$CLI" -v

