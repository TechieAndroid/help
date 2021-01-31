#!/bin/bash

#battery info
printf "\nBattery Info" && tree /sys/class/power_supply/ && printf "\n"
