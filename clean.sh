#!/bin/bash

read -p "Running this will clean out any logs generated by the other script.
 Are you sure you want to proceed? Y/N " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then

  rm dmesg.log
  rm fstab.txt
  rm ifconfig.log
  rm iplink.log
  rm lsmod.log
  rm lspci.log
  rm update.log
  rm varlog.txt

  printf "All clean. :3\n\n"
fi

printf "Goodbye\n"
