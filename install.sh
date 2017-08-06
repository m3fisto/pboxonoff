sudo pacman -S wiringpi
sudo chmod +x buttononoff
cp button.service /lib/systemd/system/button.service
sudo chmod 644 /lib/systemd/system/button.service
sudo systemctl daemon-reload
sudo systemctl enable button.service
