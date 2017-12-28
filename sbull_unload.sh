#!/bin/sh

#remove /dev
DEVICE="sbull"
MODULE="sbull"

rm -f /dev/${DEVICE}[0-3]

rmmod $MODULE
