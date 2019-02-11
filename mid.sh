#!/bin/bash

cd xenomai-3/
./scripts/bootstrap
cd

mkdir kernel_cobalt
cd  kernel_cobalt
../xenomai-3/configure --with-core=cobalt --enable-smp --enable-pshared
make install



