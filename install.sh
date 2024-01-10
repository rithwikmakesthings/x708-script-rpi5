#!/bin/bash

sudo cp -f ./x708-pwr.sh                /usr/local/bin/
sudo cp -f x708-pwr.service             /lib/systemd/system
sudo systemctl daemon-reload
sudo systemctl enable x708-pwr
sudo systemctl start x708-pwr

sudo cp -f ./x708-softsd.sh             /usr/local/bin/

echo "alias x708off='sudo /usr/local/bin/x708-softsd.sh'" >>   ~/.bashrc
source ~/.bashrc
