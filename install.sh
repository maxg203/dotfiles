cd

config config --local status.showUntrackedFiles no
echo ".cfg" >> .gitignore

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim > /dev/null
echo
echo "Don't worry about vim complaining... we're just installing vim plugins!"
echo -ne '\n' | vim -c 'PluginInstall' -c 'qa!'

# Consider switching to zsh, will need to install oh-my-zsh if that happens
# sh -c '$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)'

echo
echo "Thank you for installing Max's dotfiles! Enjoy."
