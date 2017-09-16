#!/usr/bin/env sh
cd ~/

echo && echo "CLONING DOTFILES FROM GITHUB..."
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config clone --bare https://github.com/maxg203/dotfiles.git $HOME/.cfg

echo && echo "DO GIT THINGS..."
config checkout --force
config config --local status.showUntrackedFiles no
config config --local help.autocorrect 1
if [ -f ~/.gitignore ]; then
    echo "Existing gitignore file was not modified."
else
    echo ".cfg" >> .gitignore
fi

echo && echo "CONFIGURING ALIASES..."
# XXX: Can't source scripts until after installation has finished for some reason
source ~/.aliases

echo && echo "INSTALLING DEPENDENCIES..."
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim >/dev/null
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.4/install.sh | bash
curl -L git.io/antigen > ~/.antigen.zsh && echo
source ~/.provision/install_dependencies.sh
sh -c '$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)'

echo && echo "INSTALLING VIM PLUGINS..."
echo "Don't worry about vim complaining... we're just installing vim plugins!"
echo -ne '\n' | vim -c 'PluginInstall' -c 'qa!'

echo && echo "Thank you for installing Max's dotfiles! Enjoy."
