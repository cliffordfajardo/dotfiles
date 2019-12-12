#!/bin/bash
echo "------------------------------------------"
echo "STARTING '008vim-setup.sh' script"

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "------------------------------------------"
echo "COMPLETED '008vim-setup.sh' script"
exit 0
