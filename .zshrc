export PATH=$PATH:/Users/Max/.composer
export ZSH=/Users/Max/.oh-my-zsh
# export ZSH_THEME="bodger"
export DISABLE_AUTO_UPDATE="true"

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

# Fix tmux issue on macOS Sierra
export EVENT_NOKQUEUE=1

export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
export PATH=$PATH:/Users/Max/.composer/vendor/bin
export WORKON_HOME=$HOME/.virtualenvs

export ZSH_THEME=bodger
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
# case $OSTYPE in darwin*) export VIRTUALENVWRAPPER_PYTHON=/Library/Frameworks/Python.framework/Versions/3.6/bin/python3;; esac
source /usr/local/bin/virtualenvwrapper.sh

if [ -d ~/projects ]; then
    cd ~/projects
fi

# eval "$(rbenv init -)"
eval $(thefuck --alias)

export PATH=$PATH:/usr/local/bin
export PATH=$PATH:~/.composer/vendor/bin

# Node
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

touch ~/.bash_secure || exit
source ~/.bash_secure

source ~/.antigen.zsh

fpath+=($fpath "${HOME}/.nvm/versions/node/v8.5.0/lib/node_modules/pure-prompt/functions")
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme robbyrussell

# Tell Antigen that you're done.
antigen apply

# autoload -U promptinit; promptinit
# prompt pure

# PURE_CMD_MAX_EXEC_TIME=2

export SHELL=/bin/zsh

touch ~/.secure || exit
source ~/.secure

# Add humour
# if [ "$PS1" ]; then
#     curl -sH "Accept: text/plain" https://icanhazdadjoke.com/ | cowsay
# fi

# Dothub
export HUB_USERNAME=maxg203
