export START=$START:BASHRC
echo "$START => $HOME"

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_112.jdk/Contents/Home
export ANDROID_HOME=~/Library/Android/sdk/
export ANDROID_SDK=$ANDROID_HOME
export ANDROID_NDK=~/Library/Android/sdk/ndk-bundle/
export NVM_DIR="$HOME/.nvm"
export EDITOR=/usr/local/bin/vim
export REACT_EDITOR=$EDITOR
export PAGER=/bin/cat
export PATH="${ANDROID_HOME}/platform-tools:${ANDROID_HOME}/tools:$HOME/.pyenv/bin:$PATH"
export PATH="$HOME/bin:$HOME/.rvm/bin:$HOME/.gvm/bin:$JAVA_HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/local/Cellar/qt5/5.6.0/bin:$PATH" # Add RVM to PATH for scripting

[ -s "$HOME/.bash_env" ] && . "$HOME/.bash_env"  # This loads various environment variables
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$HOME/.gvm/scripts/gvm" ] && . "$HOME/.gvm/scripts/gvm"

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

### Added by IBM Bluemix CLI
source /usr/local/Bluemix/bx/bash_autocomplete
if [ -f $(brew --prefix)/etc/bash_completion ]; then source $(brew --prefix)/etc/bash_completion; fi
