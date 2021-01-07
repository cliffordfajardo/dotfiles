#!/bin/bash
echo "------------------------------------------"
echo "STARTING '004brew-casket.sh' script"


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

#---------------------------------------
# Apps
#----------------------------------------
brew install --cask 1password       # https://1password.com/
brew install --cask alfred          # https://www.alfredapp.com/
brew install --cask appcleaner      # https://freemacsoft.net/appcleaner/
brew install --cask db-browser-for-sqlite 
brew install --cask google-chrome
brew install --cask google-backup-and-sync
brew install --cask flux            # https://justgetflux.com/news/pages/macquickstart/
brew install --cask imageoptim
brew install --cask vlc
brew install --cask  slack           # https://slack.com/
brew install --cask sloth           # https://github.com/sveinbjornt/Sloth
brew install --cask rectangle       # https://www.spectacleapp.com/
brew install --cask sublime-text    # https://www.sublimetext.com/
brew install --cask  visual-studio-code
brew install --cask virtualbox      # https://www.virtualbox.org/
                                  # install Mac Quick Look plugins   https://github.com/sindresorhus/quick-look-plugins/
brew install --cask qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package quicklookase qlvideo

# Remove outdated versions from the cellar.
brew cleanup

echo "------------------------------------------"
echo "COMPLETED '004brew-casket.sh' script"
exit 0
