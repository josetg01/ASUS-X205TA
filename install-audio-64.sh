#!/bin/bash
wget http://x205ta.myftp.org:1337/kernel/kernel-sound-64bit.tar
tar xf kernel-sound-64bit.tar
sudo ./install-sound-kernel.sh -v 
sudo apt install pavucontrol
