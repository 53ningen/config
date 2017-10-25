# install Xcode
# homebrew
# /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# ssh-copy-id
curl -L https://raw.githubusercontent.com/beautifulcode/ssh-copy-id-for-OSX/master/install.sh | sh

# cask
brew tap caskroom/cask
brew tap caskroom/versions

# KeyRepeat
defaults write -g InitialKeyRepeat -int 10 # 150ms
defaults write -g KeyRepeat -int 1 # 15ms

# install
brew install bash-completion
echo 'if [ -f $(brew --prefix)/etc/bash_completion ]; then' >> ~/.bash_profile
echo '  . $(brew --prefix)/etc/bash_completion'             >> ~/.bash_profile
echo 'fi'                                                   >> ~/.bash_profile
echo                                                        >> ~/.bash_profile

brew install zsh
echo '/usr/local/bin/zsh' >> /etc/shells
# chsh

brew install git
brew install tig
brew install git-flow
brew install wget
brew install tmux
brew install trash
brew install jq
brew install coreutils
brew install gnu-sed
brew install tree
brew install rbenv
brew install carthage
brew install sbt
brew install python
brew install ant
brew install imagemagick
brew install redis
brew install binutils
brew install cmake
brew install memcached
brew install clang-format
brew install terraform
brew install maven

# mysql
brew install mysql
mysql.server start

# haskell
brew install haskell-stack
stack setup

# pip
pip install aws-cli
pip install awsebcli

# rbenv
brew install ruby-build
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.zshrc
# RUBY_CONFIGURE_OPTS="--with-readline-dir=$(brew --prefix readline) --with-openssl-dir=$(brew --prefix openssl)" rbenv install 2.2.4
# rbenv versions
# rbenv global 2.2.4
# rbenv exec gem install bundler
# rbenv rehash

brew cask install google-chrome
brew cask install dropbox
brew cask install iterm2
brew cask install vagrant
brew cask install virtualbox
brew cask install karabiner
brew cask install slack
brew cask install java
brew cask install intellij-idea
brew cask install xtrafinder
brew cask install fabric
brew cask install mono-mdk
brew cask install kindle

# js
brew cask install atom
brew install flow

