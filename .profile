export START=$START:profile
echo $START

export CLICOLOR=1
#export LSCOLORS=ExFxCxDxBxegedabagacad
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
[[ -f "/usr/local/etc/bash_completion" ]] && source "/usr/local/etc/bash_completion"
[[ -s "$HOME/.secrets" ]] && source "$HOME/.secrets"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"
[[ -s "$HOME/.nvm/nvm.sh" ]] && source "$HOME/.nvm/nvm.sh"

export PATH="$HOME/bin:$HOME/.rvm/bin:$HOME/.gvm/bin:$JAVA_HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/local/Cellar/qt5/5.6.0/bin:$PATH"
export PATH="${ANDROID_HOME}/platform-tools:${ANDROID_HOME}/tools:$PATH"
export PATH="$HOME/.nvs/default/bin:$PATH"

SSH_ENV="$HOME/.ssh/environment"

function start_agent {
     echo "Initialising new SSH agent..."
     /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
     echo succeeded
     chmod 600 "${SSH_ENV}"
     . "${SSH_ENV}" > /dev/null
     /usr/bin/ssh-add;
}

# Source SSH settings, if applicable

if [ -f "${SSH_ENV}" ]; then
     . "${SSH_ENV}" > /dev/null
     #ps ${SSH_AGENT_PID} doesn't work under cywgin
     ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
         start_agent;
     }
else
     start_agent;
fi
