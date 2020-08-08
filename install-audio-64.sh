#!/bin/bash
wget https://github.com/josetg01/ASUS-X205TA/raw/master/Drivers/Audio/kernel-64bit-5.3.7-sound-43.tar
tar xf kernel-64bit-5.3.7-sound-43.tar
sudo ./install-sound-kernel.sh -v 
sudo apt install pavucontrol
