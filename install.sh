cd
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

config config --local status.showUntrackedFiles no
config checkout --force
echo ".cfg" >> .gitignore

config clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo -ne '\n' | vim -c 'PluginInstall' -c 'qa!'
