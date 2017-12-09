export PATH=$PATH:/Users/Max/.composer
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/Max/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
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
case $OSTYPE in darwin*) export VIRTUALENVWRAPPER_PYTHON=/Library/Frameworks/Python.framework/Versions/3.6/bin/python3;; esac
source /usr/local/bin/virtualenvwrapper.sh

if [ -d ~/projects ]; then
    cd ~/projects
fi

# eval "$(rbenv init -)"
eval $(thefuck --alias)

export PATH=$PATH:/usr/local/bin

# Node
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

touch ~/.bash_secure || exit
source ~/.bash_secure

source ~/.antigen.zsh

fpath+=($fpath "${HOME}/.nvm/versions/node/v8.5.0/lib/node_modules/pure-prompt/functions")
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme ""

# Tell Antigen that you're done.
antigen apply

autoload -U promptinit; promptinit
prompt pure

PURE_CMD_MAX_EXEC_TIME=2

touch ~/.secure || exit
source ~/.secure
