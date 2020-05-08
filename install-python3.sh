#!/bin/bash

yum -y install zlib-devel libffi-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel
wget https://www.python.org/ftp/python/3.7.3/Python-3.7.3.tgz
tar xvf Python-3.7.3.tgz
cd Python-3.7.3; ./configure --enable-optimizations && make altinstall
ln -s /usr/local/bin/python3.7 /usr/local/bin/python3
wget https://bootstrap.pypa.io/get-pip.py
python3 get-pip.py
