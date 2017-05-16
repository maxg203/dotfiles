# Allow 'config' to replace 'git' specifially for managing these dotfiles
# from anywhere on the command line
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# This tells Git to ignore the place where it stores itself
echo ".cfg" >> .gitignore

# Hide untracked files that will be (at least mostly) unrelated to the dotfiles
config config --local status.showUntrackedFiles no
config checkout

# Install oh-my-zsh
sh -c '$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)'
