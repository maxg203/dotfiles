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
**Warning:** This will replace existing dotfiles if you already have any installed locally. Because mine are better.
``` shell
curl -o- https://raw.githubusercontent.com/maxg203/dotfiles/master/install.sh | sh
```

## Usage
Use the `config` alias in place of `git` (i.e. `config status` would be equivilant to `git status` within a normal git repo). You can do this in any directory to manage your dotfiles.

## Update
Once installed, use the alias `update` to pull the latest changes from this repository, source the dotfiles and check that all the vim has all its plugins installed.

## My Terminals
I personally use the Xenial default GNOME Terminal on Linux and iTerm2 on macOS. These dotfiles work great with these especially in my opinion. I do not use Windows for development much so if you do... good luck!
