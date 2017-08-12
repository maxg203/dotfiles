cd
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
echo ".cfg" >> .gitignore

config config --local status.showUntrackedFiles no
config checkout --force

config clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -c 'PluginInstall' -c 'qa!'
