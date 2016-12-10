#!/usr/bin/env bash

# This script is the entry point for installing all things on my computer.
#

echo "------------------------------------------"
echo "Starting '001setup-my-new-machine.sh script'"


# Install my custom Mac OS Settings
sh ./.002osx.sh

# Install Homebrew package manager
sh ./.003brew.sh

# Install my commonly used Mac OSX applications
sh ./.004brew-casket.sh




echo "COMPLETED '001setup-my-new-machine.sh' script"
exit 0
