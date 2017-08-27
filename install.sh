cd

config config --local status.showUntrackedFiles no
echo ".cfg" >> .gitignore

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim > /dev/null
echo
echo "Don't worry about vim complaining... we're just installing vim plugins!"
echo -ne '\n' | vim -c 'PluginInstall' -c 'qa!'
echo
echo "Thank you for installing Max's dotfiles! Enjoy."

# Install neovim using either Homebrew or Linuxbrew
sudo apt-get update -y
sudo apt install linuxbrew-wrapper -y
brew install neovim
