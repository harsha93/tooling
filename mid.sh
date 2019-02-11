#!/bin/bash

cd xenomai/
./scripts/bootstrap
cd

mkdir kernel_cobalt
cd !$
../xenomai-3/configure --with-core=cobalt --enable-smp --enable-pshared
make install



