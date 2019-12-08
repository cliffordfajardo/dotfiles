#!/bin/bash
echo "STARTING '006vscode-setup.sh' script"
echo "------------------------------------------"
# TODO ..... find the non node version of these (c/rust or go versions....)so you don't need to rely on NodeJS


# Smart Emoji finder
npm install -g alfred-emoj
# kill procceses cross platform (useful for non-mac setups)
npm install -g fkill-cli
#cross platform copy to clipboard
npm install -g clipboard-cli
#live reload server
npm install -g live-server
#Opens stuff like websites, files, executables. Cross-platform.
npm install -g opn

# Pretty print JSON, manipulate it and much more in the CLI.
npm install -g json

echo "COMPLETED '007npmsetup.sh' script"
echo "------------------------------------------"
exit 0
