cd
source ~/.aliases
git clone --bare https://github.com/maxg203/dotfiles.git $HOME/.cfg
config checkout --force

source ~/.provision/install_dependencies.sh

config config --local status.showUntrackedFiles no
if [ -f ~/.gitignore ]; then
    echo "Existing gitignore file was not modified."
else
    echo ".cfg" >> .gitignore
fi

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim >/dev/null

sh -c '$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)'
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.4/install.sh | bash
curl -L git.io/antigen > ~/.antigen.zsh


echo
echo "Don't worry about vim complaining... we're just installing vim plugins!"
echo -ne '\n' | vim -c 'PluginInstall' -c 'qa!'

echo
echo "Thank you for installing Max's dotfiles! Enjoy."
