#!/bin/bash


IPIPE=ipipe-core-$1-x86-5.patch
if [ -z "$1" ]
then
    echo "USAGE: enter the kernel number that is relevent for cobalt"
    exit 1
fi

wget https://xenomai.org/downloads/ipipe/v4.x/x86/$IPIPE
wget https://mirrors.edge.kernel.org/pub/linux/kernel/v4.x/linux-$1.tar.gz
git clone git://git.xenomai.org/xenomai-3.git

LINUX_DIR=linux-$1.tar.gz
tar -xzf $LINUX_DIR
cd linux-$1
echo "entering the linux directory"

../xenomai-3/scripts/prepare-kernel.sh --arch=x86 --ipipe=../$IPIPE


make menuconfig
