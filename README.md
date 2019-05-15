# osx home account
=============
default template for a OSX user's home account.  Do the following after clone

## Update vim packages
## install acdcli https://github.com/yadayada/acd_cli for amazon cloud drive
```
./bin/viminstall
./bin/install-acdcli
```

## Added utilities homebrew, rvm, pyenv, gvm, zsh
```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
curl -sSL https://get.rvm.io | bash -s stable --rails
curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash
bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/guarinogabriel/mac-cli/master/mac-cli/tools/install)"
### zepto zsh framework management
git clone --recursive https://github.com/sorin-ionescu/prezto.git
"${ZDOTDIR:-$HOME}/.zprezto"
### bhilburn/powerlevel9k zsh prompt
git clone https://github.com/bhilburn/powerlevel9k.git
~/.oh-my-zsh/custom/themes/powerlevel9k
#### add this to ~.zshrc
ZSH_THEME="powerlevel9k/powerlevel9k"
### update fonts
brew tap caskroom/fonts
brew cask install font-hack-nerd-font
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
brew cask install keycastr 
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
brew install freetype libpng libjpeg lua ipfs ripgrep
brew install cmake ghc cabal-install boost boost-python
# [dnsmasq](https://gist.github.com/zhurui1008/48130439a079a3c23920)
# [clamav](https://gist.github.com/zhurui1008/4fdc875e557014c3a34e)
brew install clamav dnsmasq dnscrypt-proxy
# [cf](https://github.com/cloudfoundry/cli)
brew tap cloudfoundry/tap
brew install cf-cli
# redux
brew cask install react-native-debugger
# Node manager nodenv and default to node 10.10.0 (using NVM for better react-native compat)
#brew install nodenv && nodenv init && nodenv install 10.10.0 && nodenv global 10.10.0
# Test install
#curl -fsSL https://github.com/nodenv/nodenv-installer/raw/master/bin/nodenv-doctor | bash
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
npm i -g coffee-script marked jsonlint code-push-cli@1.12.6-beta
npm i -g yarn updtr nodemon npm brunch regenerator decaffeinate
npm i -g imagemin
npm i -g react-native-git-upgrade react-native-rename
```
### Tools
```
# enable internet sharing on OSX
bin/setupDHCP
```

### .ssh
```
Host *
 SendEnv LANG LC_*
 ForwardAgent yes
 AddKeysToAgent yes
 UseKeychain yes
 IdentityFile ~/.ssh/id_rsa
 ControlMaster auto
 ControlPath  ~/.ssh/sockets/%r@%h-%p
 ControlPersist  600
Host nautilus
    User alex
    HostName dev.nautilustechnologies.io
    ForwardAgent yes

# remote ports to local
    RemoteForward 8111 dev.nautilustechnologies.io:8111
    RemoteForward 8112 dev.nautilustechnologies.io:8112
    RemoteForward 8115 dev.nautilustechnologies.io:8115
    RemoteForward 8080 dev.nautilustechnologies.io:8010
    RemoteForward 8081 dev.nautilustechnologies.io:8081

# local ports to remote
#    LocalForward 127.0.0.1:8111 127.0.0.1:8111
#    LocalForward 127.0.0.1:8112 127.0.0.1:8112
#    LocalForward 127.0.0.1:8115 127.0.0.1:8115
#    LocalForward 127.0.0.1:8080 127.0.0.1:8080
#    LocalForward 127.0.0.1:8080 127.0.0.1:8081
#  IdentityFile ~/.ssh/id_rsa
#  ProxyCommand ssh -T -i ~/.ssh/id_rsa alex@dev.nautilustechnologies.io
#Host remote-host ControlMaster auto ControlPath ~/.ssh/master-%l-%r@%h:%p ControlPersist 2h 
```

V1.0.3
