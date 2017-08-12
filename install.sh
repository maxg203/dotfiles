cd

config config --local status.showUntrackedFiles no
echo ".cfg" >> .gitignore

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo -ne '\n' | vim -c 'PluginInstall' -c 'qa!'
