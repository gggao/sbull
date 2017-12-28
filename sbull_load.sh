#!/bin/sh

MODULE="sbull"
DEVICE="sbull"
MODE="664"
MINOR=0

insmod ./$MODULE.ko $* || exit 1

major=$(awk '$2=="'$MODULE'" {print $1}' /proc/devices)
echo "major:" $major

rm -f /dev/${DEVICE}[0-3]

mknod /dev/${DEVICE}0 b $major 0
mknod /dev/${DEVICE}1 b $major 1
mknod /dev/${DEVICE}2 b $major 2
mknod /dev/${DEVICE}3 b $major 3

group="staff"
grep -q '^staff' /etc/group ||group="wheel"

chgrp $group /dev/${DEVICE}[0-3]
chmod $MODE /dev/${DEVICE}[0-3]
