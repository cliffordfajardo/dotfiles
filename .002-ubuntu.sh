#!/usr/bin/env bash
echo "------------------------------------------"
echo "STARTING '002ubuntu.sh' script"


# Before beginning, ask for the administrator password upfront
sudo -vs

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure all downlaod sources are up to date, before running an upgrade of software
sudo apt update
sudo apt upgrade

#------------------apt installs------------------------
sudo apt install -y git
sudo apt install -y ubuntu-restricted-extras
sudo apt install -y vim
sudo apt install -y fzf
sudo apt install -y bat
sudo apt install -y fd-find
#Flux
sudo add-apt-repository ppa:nathan-renniewaldock/flux
sudo apt-get update
sudo apt-get install fluxgui

#------------------snap installs------------------------
sudo snap install chromium
sudo snap install code
echo "COMPLETED '002ubuntu.sh' script"
exit 0




