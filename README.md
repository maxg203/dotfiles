This repository uses [Nicola Paolucci's approach](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/) to managing dotfiles. The important information is repeated here.

## Starting from scratch
``` shell
git init --bare $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc
```
Now manage your dotfiles just like any other repository except that you should now use the `config` alias instead of `git`.

## Install these dotfiles on another system
**Warning:** The use of the `--force` flag will overwrite existing dotfiles on the system if it finds any.
``` shell
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
git clone --bare https://github.com/maxg203/dotfiles-2.git $HOME/.cfg
config checkout --force
source ~/install.sh >/dev/null
```

## Usage
Use the `config` alias in place of `git` (i.e. `config status` would be equivilant to `git status` within a normal git repo). You can do this in any directory to manage your dotfiles.
