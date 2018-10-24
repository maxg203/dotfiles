# Start timer
integer t0=$(date '+%s')

source ~/.zsh/path.sh

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

if [ -d ~/projects ]; then
    cd ~/projects
fi

# eval "$(rbenv init -)"
eval $(thefuck --alias)

# Misc. Environment Variables
export ZSH=/Users/Max/.oh-my-zsh
export DISABLE_AUTO_UPDATE="true"

# Fix tmux issue on macOS Sierra
export EVENT_NOKQUEUE=1

export WORKON_HOME=$HOME/.virtualenvs
export ZSH_THEME=robbyrussell
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
# case $OSTYPE in darwin*) export VIRTUALENVWRAPPER_PYTHON=/Library/Frameworks/Python.framework/Versions/3.6/bin/python3;; esac

source /usr/local/bin/virtualenvwrapper.sh

# Node
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

touch ~/.bash_secure || exit
source ~/.bash_secure

source ~/.antigen.zsh

fpath+=($fpath "${HOME}/.nvm/versions/node/v8.5.0/lib/node_modules/pure-prompt/functions")

# antigen use oh-my-zsh

# # Bundles from the default repo (robbyrussell's oh-my-zsh).
# antigen bundle git
#
# # Syntax highlighting bundle.
# # antigen bundle zsh-users/zsh-syntax-highlighting
#
# # Load the theme.
# antigen theme robbyrussell
#
# # Tell Antigen that you're done.
# antigen apply
#
# autoload -U promptinit; promptinit
# prompt pure
#
# PURE_CMD_MAX_EXEC_TIME=2

export SHELL=/bin/zsh

# Add humour
# if [ "$PS1" ]; then
#     curl -sH "Accept: text/plain" https://icanhazdadjoke.com/ | cowsay
# fi

bindkey -v

bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward

function zle-line-init zle-keymap-select {
    VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select
export KEYTIMEOUT=1

# Dothub
export HUB_USERNAME=maxg203

touch ~/.secure || exit
source ~/.secure

function {
    local -i t1 startup
    t1=$(date '+%s')
    startup=$(( t1 - t0 ))
    [[ $startup -gt 1 ]] && print "Hmm, poor shell startup time: $startup seconds!"
    ##print "startup time: $startup"
}

unset t0
