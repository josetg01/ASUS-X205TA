#!/bin/bash
wget https://sourceforge.net/projects/distros-x205ta/files/kernel/kernel-64bit-sound.tar/download
tar xf kernel-64bit-sound.tar
sudo ./install-sound-kernel.sh -v 
sudo apt install pavucontrol
