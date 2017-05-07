# osx home account
=============
default template for a OSX user's home account.  Do the following after clone

## Update vim packages
## install acdcli https://github.com/yadayada/acd_cli for amazon cloud drive
```
./bin/viminstall
./bin/install-acdcli
```

## Added utilities homebrew, nvm, rvm, pyenv, gvm, zsh
```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash
curl -sSL https://get.rvm.io | bash -s stable --rails
curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash
bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/guarinogabriel/mac-cli/master/mac-cli/tools/install)"
```
# install cocoapods
- [5077:issue with gem update](https://github.com/CocoaPods/CocoaPods/issues/5077)
```
gem install cocoapods
pod repo remove master
pod setup

gem install lunchy
```
## golang utils
```
go get -u github.com/govend/govend
```
## brew binaries
```
brew install autoconf automake
brew install bash #(if you plan to use this as your shell, don't forget to update /etc/shells with /usr/local/bin/bash)
brew install binutils coreutils cvs gawk gettext git gnu-sed grep
brew install help2man libtool make ncurses pkg-config wget
#
brew cask install vagrant
brew cask install keycastr imagemagick
brew cask install Caskroom/cask/tcl
brew cask install Caskroom/cask/osxfuse homebrew/fuse/s3-backer \
homebrew/fuse/s3fs homebrew/fuse/btfs
#
brew install watchman mongodb xz pianobar #pandora musing player
brew install couchdb ffmpeg htop tmux redis gmp nmap openssl
brew install macvim qemu vim docker docker-compose docker-machine
# https://doc.owncloud.org/desktop/2.0/building.html
brew tap owncloud/owncloud
brew install $(brew deps owncloud-client)
# https://amc.ovh/2015/08/14/mounting-uploading-amazon-cloud-drive-encrypted.html
brew install homebrew/fuse/encfs the_silver_searcher
brew install gradle squid sarg links yasm libjpeg pil
brew install freetype libpng libjpeg lua ipfs
brew install cmake ghc cabal-install boost boost-python
# [dnsmasq](https://gist.github.com/zhurui1008/48130439a079a3c23920)
# [clamav](https://gist.github.com/zhurui1008/4fdc875e557014c3a34e)
brew install clamav dnsmasq dnscrypt-proxy
# [cf](https://github.com/cloudfoundry/cli)
brew tap cloudfoundry/tap
brew install cf-cli
brew install ccache lzo
```
brew tap discoteq/discoteq
brew install flock
```
## install gems
```
gem install ronn
```
## install vim scrips
```
~/bin/viminstall
```
### install golang packages
```
gvm use go1.6
go get github.com/nlf/dlite
~/bin/install-gocryptfs
```
## install leiningen
```
~/bin/lein
```
### npm global packages
```
npm install react-native-css -g
npm install react-native-cli -g
npm install http-server -g
npm i -g yarn updtr nodemon npm yo generator-rn-toolbox budo
```

V1.0.3
