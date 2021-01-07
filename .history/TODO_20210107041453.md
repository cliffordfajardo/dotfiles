[] update script for Mac OS big sur
  - the default shell is zsh
  - when I ran the setup script for homebrew, it failed the cask install script because I didn't have a .zshrc file with `export PATH=/opt/homebrew/bin:$PATH`. so when the 2nd script ran it couldn't find the brew command.
  - I'll need to create a zsh_history file
  - create new python script for terminal history ..see package contents of the terminal history package...its an easy script to tweak
