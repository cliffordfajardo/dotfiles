#!/bin/bash
echo "------------------------------------------"
echo "STARTING '006vscode-setup.sh' script"

code --install-extension ms-vscode.atom-keybindings
code --install-extension ms-vsliveshare.vsliveshare-pack
code --install-extension abiospampinato.vscode-open-in-finder
code --install-extension formulahendry.auto-close-tag
code --install-extension xyz.local-history
code --install-extension formulahendry.auto-rename-tag
code --install-extension CoenraadS.bracket-pair-colorizer
code --install-extension tcasey.caddy-vscode
code --install-extension EditorConfig.editorconfig
code --install-extension dbaeumer.vscode-eslint
code --install-extension eamodio.gitlens
code --install-extension codezombiech.gitignore
code --install-extension rsbondi.highlight-words
code --install-extension wix.vscode-import-cost
code --install-extension wmaurer.vscode-jumpy
code --install-extension monokai.theme-monokai-pro-vscode
code --install-extension leizongmin.node-module-intellisense
code --install-extension techer.open-in-browser
code --install-extension christian-kohler.path-intellisense
code --install-extension rafamel.subtle-brackets
code --install-extension robertohuertasm.vscode-icons

echo "COMPLETED '006vscode-setup.sh' script"
echo "------------------------------------------"
exit 0
