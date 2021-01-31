#!/bin/bash

#update index and search for xorg logs
sudo updatedb
printf "Xorg.log files"
locate log | grep -i xorg >> xorg-logs.txt

#xorg logs location
printf "Here's where your xorg logs are located:"
cat xorg-logs.txt
