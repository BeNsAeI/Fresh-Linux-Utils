#!/bin/sh
echo "Installing essential packages and libraries..."

echo ""
echo "___"
echo "installing utilities..."
sudo apt install screen
sudo apt install sl
sudo apt install nano
sudo apt install cmatrix
#wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
#echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install sublime-text
sudo apt install steam-installer
sudo apt install gnome-tweaks
sudo apt install gnome-tweak-tool
sudo apt install filezilla
sudo apt install gufw
sudo apt install git

echo ""
echo "___"
echo "Installing media tools..."
sudo apt install vlc

echo ""
echo "___"
echo "Installing Chrome..."
#wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
#echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt update
sudo apt install google-chrome-stable

echo ""
echo "___"
echo "Installing python ..."
sudo apt install python2.7
sudo apt install python3.7
sudo apt install python-pip
sudo apt install python3-pip

echo ""
echo "___"
echo "install Math..."
pip install numpy
pip install scipy
pip install matplotlib
pip3 install numpy
pip3 install scipy
pip3 install matplotlib

echo ""
echo "___"
echo "Installing AI..."
pip install scikit-learn
pip3 install scikit-learn
pip install opencv-python
pip3 install opencv-python
pip install opencv-contrib-python
pip3 install opencv-contrib-python
pip3 install https://download.pytorch.org/whl/cpu/torch-1.0.1.post2-cp36-cp36m-linux_x86_64.whl
pip3 install torchvision

echo ""
echo "___"
echo "Installing graphics..."
pip install PyOpenGL PyOpenGL_accelerate
pip3 install PyOpenGL PyOpenGL_accelerate
sudo apt install libglu1-mesa-dev freeglut3-dev mesa-common-dev
sudo apt install glew-utils libglew-dev libglew2.0
sudo apt install libglfw3 libglfw3-dev
sudo apt install libalut-dev
#sudo ln -sf /usr/lib/x86_64-linux-gnu/libGLEW.so.2.0.0 /usr/lib/libGLEW.so.1.13

echo ""
echo "___"
echo "Update and upgrade all packages..."
sudo apt update
sudo apt upgrade

echo ""
echo "___"
echo "Configuirng OS..."
sudo ufw enable
sudo ufw status
sudo ufw allow ssh
sudo cp ./nanorc.conf /etc/nanorc
git config --global user.email "behnam.saeidi@gmail.com"
git config --global user.name "BeNsAeI"
git config --global credential.helper cache

echo ""
echo "All Done!"
echo "-----------------------------"
echo ""