#!/bin/sh
sudo apt-get install -y python3-pip
sudo useradd -m -p d62f5c72eec752e8b4f923ef pproxy
sudo su pproxy -c "python3 -m pip install proxy.py"
sudo cp ./proxy.service /etc/systemd/system/
sudo systemctl enable proxy
sudo systemctl start proxy