#!/bin/sh
sudo apt install wget
wget https://packages.microsoft.com/config/debian/12/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb
sudo apt update
sudo apt-get install -y dotnet-runtime-8.0
sudo apt-get install -y dotnet-sdk-8.0
