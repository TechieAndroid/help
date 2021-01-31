#!/bin/bash

#update index and search for xorg logs
sudo updatedb
printf "Xorg.log files"
locate log | grep -i xorg >> xorg-logs.txt

printf "\n"

#create log files for relevant system commands
sudo dmesg >> dmesg.log
lsmod >> lsmod.log
lspci -k >> lspci.log
tree /var/log/ >> varlog.txt

#create log files for relevant networking commands
ifconfig >> ifconfig.log
iplink >> iplink.log

#create logs for updates
sudo pacman -Syu >> update.log
yay >> update.log

#disk info
printf "Disk Info\n" && lsblk && printf "\n" && sudo blkid && printf "\n" && df && free && printf "\n" && cat /etc/fstab >> fstab.txt && cat fstab.txt

#battery info
printf "\nBattery Info" && tree /sys/class/power_supply/ && printf "\n"

#remember man
printf "
use man -k query to search man database\n
tree dir to get an easy-to-read dir listing\n\n"

#xorg logs location
printf "Here's where your xorg logs are located:"
cat xorg-logs.txt

#print working dir and list contents
printf "\nYou are here\n" && pwd && printf "\n" && ls -lahS && printf "\n" && tree && printf "\n"
