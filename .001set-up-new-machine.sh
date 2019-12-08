#!/usr/bin/env bash

# This script is the entry point for installing all things on my computer.
echo "------------------------------------------"
echo "Starting '001setup-my-new-machine.sh script'"


# Install my custom Mac OS Settings
sh ./.002osx.sh

# Install Homebrew package manager
sh ./.003brew.sh        #
sh ./.004brew-casket.sh # Install my commonly used Mac OSX applications
sh ./.005git.sh         # Confgure some better git defaults
sh ./.006vscode-setup.sh         # Confgure some better git defaults




echo "COMPLETED '001setup-my-new-machine.sh' script"
exit 0
