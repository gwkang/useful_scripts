#!/bin/bash

yum groupinstall -y "Development Tools"
yum install -y wget
yum install -y ncurses-devel

wget https://www.vanheusden.com/multitail/multitail-6.5.0.tgz
tar xvf multitail-6.5.0.tgz
cd multitail-6.5.0
make install

cp /usr/local/etc/multitail.conf.new /usr/local/etc/multitail.conf
echo "colorscheme:mylog" >> /usr/local/etc/multitail.conf
echo "cs_re:magenta,,bold:^.*\[critical\].*" >> /usr/local/etc/multitail.conf
echo "cs_re:red,,bold:^.*\[error\].*" >> /usr/local/etc/multitail.conf
echo "cs_re:yellow:^.*\[warning\].*" >> /usr/local/etc/multitail.conf
echo "cs_re:green:^.*\[info\].*" >> /usr/local/etc/multitail.conf
