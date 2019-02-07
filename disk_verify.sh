#!/bin/bash

if [ $(id -u) == 0 ]; then
  echo "You need to run this script as standard user, not root (pid may be 501). Type id -u in terminal to check this"
exit
fi
diskutil verifyDisk /dev/disk0
echo "Finished"
