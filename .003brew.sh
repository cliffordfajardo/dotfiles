#!/bin/bash
echo "------------------------------------------"
echo "STARTING '003brew.sh' script"



########################
# START Install Homebrew
########################
# Before beginning, ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

if test ! "$(which brew)"; then
  echo "You don't have homebrew installed. Let me install Homebrew for you."
  # Install the correct homebrew for each OS type
  if test "$(uname)" = "Darwin"; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    echo "Finished installing Homebrew on your computer."
  else
    echo "You tried running this script on a non-OSX computer. The program has exited."
  fi
else
  echo "It looks like you have homebrew installed already. Nothing to do here."
fi
#######################
# END Install Homebrew
######################



#########################################
# START Install my Homebrew packages
########################################
# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade



# Install font tools.
brew tap caskroom/fonts         #installs Fira Code font with Ligatures see: https://github.com/tonsky/FiraCode/wiki
brew cask install font-fira-code

# Install other useful binaries.
brew install bat                      # enhanced version of cat
brew install diff-so-fancy            # git diff command .. with fancy human readable output
brew install exa                      # modern version of 'ls' command: https://github.com/ogham/exa
brew install figlet                    # Make large text from orginary characters http://www.figlet.org/
brew install fzf                      # fuzzy search directories & command history
brew install htop                     # better version of top
brew install pstree                   # List proccesses as a tree (not available on mac by default, unlike other nix systems (Ubuntu etc)
brew install git                      # http://brewformulas.org/Rename
brew install node                     # https://nodejs.org/en/
brew install shellcheck               # used for Atom linter shellcheck
brew install sqlformat                # used for Atom Beautify package
npm install -g tldr                   # If `man` pages don't help much, this is my next fallback resource as a fallback to avoid using the browser, to avoid context switching. These are simplified community-driven man pages.
brew install tree                     # http://brewformulas.org/tree


# Remove outdated versions from the cellar.
brew cleanup
#########################################
# END Install of my Homebrew packages
########################################



echo "COMPLETED '003brew.sh' script"
echo "------------------------------------------"
exit 0
