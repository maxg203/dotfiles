This repository uses [Nicola Paolucci's approach](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/) to managing dotfiles. The important information is repeated here.

# Starting from scratch
``` shell
git init --bare $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc
```
Now manage your dotfiles just like any other repository except that you should now use the `config` alias instead of `git'.

# Install your dotfiles on another system
``` shell
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# This tells git to ignore the place where it stores itself
echo ".cfg" >> .gitignore
git clone --bare git@github.com:maxg203/dotfiles-2.git $HOME/.cfg

config config --local status.showUntrackedFiles no
config checkout
```
If you get an error when you run `config checkout`, git is probably trying to avoid overwriting your existing dotfiles. It will tell you specifically which files are causing the issue. If you care about them, move them out of the way or take a backup of them and delete them. Otherwise, you can safely delete them.
