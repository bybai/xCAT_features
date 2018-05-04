#!/bin/sh

yum -y install gcc* python-devel libffi-devel openssl-devel 

wget https://bootstrap.pypa.io/get-pip.py
python get-pip.py
rm -f get-pip.py*

pip install ansible 

