#!/bin/bash

yum groupinstall -y "Development Tools"
yum install -y wget
yum install -y ncurses-devel

wget https://www.vanheusden.com/multitail/multitail-6.5.0.tgz
tar xvf multitail-6.5.0.tgz
cd multitail-6.5.0
make install
