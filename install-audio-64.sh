#!/bin/bash
wget http://x205ta.myftp.org:1337/kernel/kernel-64bit-5.0.1-sound-41.tar
tar xf kernel-64bit-5.0.1-sound-41.tar
sudo ./install-sound-kernel.sh -v 
sudo apt install pavucontrol
