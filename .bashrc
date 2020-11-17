# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/corollari/Downloads/google-cloud-sdk-241.0.0-linux-x86_64/google-cloud-sdk/path.bash.inc' ]; then . '/home/corollari/Downloads/google-cloud-sdk-241.0.0-linux-x86_64/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/corollari/Downloads/google-cloud-sdk-241.0.0-linux-x86_64/google-cloud-sdk/completion.bash.inc' ]; then . '/home/corollari/Downloads/google-cloud-sdk-241.0.0-linux-x86_64/google-cloud-sdk/completion.bash.inc'; fi
export GOPATH=$HOME/go
export PATH="$PATH:$GOPATH/bin"
export BNCHOME="~/.bnbchaind"
export DOTNET_CLI_TELEMETRY_OPTOUT="1"

# Eternal bash history.
# ---------------------
# Undocumented feature which sets the size to "unlimited".
# http://stackoverflow.com/questions/9457233/unlimited-bash-history
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
# Change the file location because certain bash sessions truncate .bash_history file upon close.
# http://superuser.com/questions/575479/bash-history-truncated-to-500-lines-on-each-login
export HISTFILE=~/.bash_eternal_history
# Force prompt to write history after every command.
# http://superuser.com/questions/20900/bash-history-loss
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

export PATH="$HOME/.cargo/bin:$PATH"
