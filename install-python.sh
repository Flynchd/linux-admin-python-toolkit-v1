#!/bin/bash

#Update system
echo "Updating system"
sudo yum -y update

#Install some necessary tools
echo "Installing development tools"
sudo yum -y groupinstall "Development Tools"

# Install the dependencies
echo "Installing dependencies"
sudo yum -y install zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-devel libffi-devel

# Download Python source
echo "Downloading Python"
cd /opt
sudo wget https://www.python.org/ftp/python/3.9.0/Python-3.9.0.tgz

# Extract the tgz file
echo "Extracting Python"
sudo tar xzf Python-3.9.0.tgz

# Compile Python source
echo "Compiling Python source"
cd Python-3.9.0
sudo ./configure --enable-optimizations
sudo make altinstall

# Symlink python3.9 to python
echo "Creating symlink"
sudo ln -s /usr/local/bin/python3.9 /usr/bin/python

# Verify the installation
echo "Verifying the installation"
python --version

echo "Python installation is complete"
