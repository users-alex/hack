export START=$START:BASHRC
echo "$START => $HOME"
ulimit -S -n 2048

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_112.jdk/Contents/Home
export ANDROID_HOME=~/Library/Android/sdk/
export ANDROID_SDK=$ANDROID_HOME
export ANDROID_NDK=~/Library/Android/sdk/ndk-bundle/
export EDITOR=/usr/local/bin/vim
export REACT_EDITOR=$EDITOR
export PAGER=/bin/cat

#[ -s "$HOME/.bash_env" ] && . "$HOME/.bash_env"  # This loads various environment variables
export NVS_HOME="$HOME/.nvs" && [ -s "$NVS_HOME/nvs.sh" ] && . "$NVS_HOME/nvs.sh"
#[ -s "$HOME/.gvm/scripts/gvm" ] && . "$HOME/.gvm/scripts/gvm"

### Added by IBM Bluemix CLI
#source /usr/local/Bluemix/bx/bash_autocomplete
#if [ -f $(brew --prefix)/etc/bash_completion ]; then source $(brew --prefix)/etc/bash_completion; fi
