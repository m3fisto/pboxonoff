sudo rm /etc/resolv.conf
sudo sh -c 'echo "nameserver 8.8.8.8" > /etc/resolv.conf '
sudo pacman -S wiringpi
cd
makedir pboxbut
cd pboxbut
wget https://github.com/m3fisto/pboxonoff/blob/master/buttononoff
sudo chmod +x buttononoff
wget https://github.com/m3fisto/pboxonoff/blob/master/button.service
cp button.service /lib/systemd/system/button.service
sudo chmod 644 /lib/systemd/system/button.service
sudo systemctl daemon-reload
sudo systemctl enable button.service
