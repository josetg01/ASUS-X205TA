#!/bin/bash
# Download firmware file and install it
wget http://lopaka.github.io/files/instructions/brcmfmac43340-sdio.txt -O /lib/firmware/brcm/brcmfmac43340-sdio.txt
wget http://lopaka.github.io/files/instructions/BCM43341B0.hcd -O /lib/firmware/brcm/BCM43341B0.hcd

# Create systemd service file
cat >/etc/systemd/system/btattach.service <<EOL
[Unit]
Description=Btattach

[Service]
Type=simple
ExecStart=/usr/bin/btattach --bredr /dev/ttyS1 -P bcm
ExecStop=/usr/bin/killall btattach

[Install]
WantedBy=multi-user.target
EOL

# Enable service
systemctl enable btattach

# Sound
wget https://github.com/josetg01/ASUS-X205TA/raw/master/Drivers/Audio/kernel-64bit-5.3.7-sound-43.tar
tar xf kernel-64bit-5.3.7-sound-43.tar
sudo ./install-sound-kernel.sh -v
sudo apt update
sudo apt install pavucontrol
