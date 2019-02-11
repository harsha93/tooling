#!/bin/bash

if [ -z $1 ]
then
    echo "enter the kernel number"
    exit 1
fi

rm *patch*
rm -rf xenomai-3
sudo bash
rm -rf linux*
rm -rf /usr/lib/xenomai
rm -rf /boot/*$1*
rm -rf kernel_cobalt
