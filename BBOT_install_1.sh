#!/bin/sh

# Author: Con4or
# Script to install bbot stuff
# Part 1 of 2 (due to reboot requirement)

sudo apt install python3 python3-venv python3-pip pipx
python3 -m pipx ensurepath

echo "Rebooting in:"

for i in 3 2 1
do 
    echo $i
    sleep 1
done
echo "Execute reboot..."
sleep 1

# Must reboot to finish installation of python environments
sudo reboot
