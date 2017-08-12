cd
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
echo ".cfg" >> .gitignore

config config --local status.showUntrackedFiles no
config checkout --force
config submodule init
config submodule update

vim -c 'PluginInstall' -c 'qa!'
