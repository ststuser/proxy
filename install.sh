sudo apt-get install -y python3-pip
sudo useradd -p d62f5c72eec752e8b4f923ef proxy
sudo su -u proxy -c python3 -m pip install proxy.py
sudo cp ./proxy.service /etc/systemd/system/
sudo systemctl enable proxy
sudo systemctl start proxy