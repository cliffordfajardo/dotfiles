#!/bin/bash


# 'brew cask' is an extension to brew that allows management of graphical applications through the Cask project.
# Install My Common Mac Applications
# http://gillesfabio.github.io/homebrew-cask-homepage/#
# to maintain cask ....
#     brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup

echo "------------------------------------------"
echo "STARTING '004brew-casket.sh' script"

# Make sure we’re using the latest Homebrew.
brew update
# Upgrade any already-installed formulae.
brew upgrade

# install brew cask, which is an extension of homebrew that installs common native mac apps
brew tap caskroom/cask


brew cask install alfred          # https://www.alfredapp.com/
brew cask install appcleaner      # https://freemacsoft.net/appcleaner/
brew cask install google-chrome
brew cask install google-backup-and-sync
brew cask install flux            # https://justgetflux.com/news/pages/macquickstart/
brew cask install imageoptim
brew cask install sublime-text    # https://www.sublimetext.com/
brew cask install spectacle       # https://www.spectacleapp.com/
brew cask install 1password       # https://1password.com/
brew cask install slack           # https://slack.com/
brew cask install iterm2
brew cask install visual-studio-code
brew cask install virtualbox      # https://www.virtualbox.org/
# install Mac Quick Look plugins   https://github.com/sindresorhus/quick-look-plugins/
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package quicklookase qlvideo

# Remove outdated versions from the cellar.
brew cleanup

echo "------------------------------------------"
echo "COMPLETED '004brew-casket.sh' script"
exit 0
