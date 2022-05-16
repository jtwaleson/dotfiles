#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

set -e

echo enter passphrase

read x

echo "opening disk 1"
test -b /dev/mapper/crypt1 || echo -n "$x" | cryptsetup luksOpen /dev/sdb crypt1
echo "opening disk 2"
test -b /dev/mapper/crypt2 || echo -n "$x" | cryptsetup luksOpen /dev/sdc crypt2
echo "opening disk 3"
test -b /dev/mapper/crypt3 || echo -n "$x" | cryptsetup luksOpen /dev/sdd crypt3

echo "mounting volume"
mount | grep /mnt/btrfs || mount /mnt/btrfs
#mount | grep /mnt/btrfs || mount -t btrfs -o noatime,nodiratime /dev/mapper/crypt1 /mnt/btrfs

#echo "restarting plex"
#service plexmediaserver restart
systemctl start syncthing@jouke.service transmission-daemon.service plexmediaserver.service
