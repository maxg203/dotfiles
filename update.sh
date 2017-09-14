prompt_install() {
    echo -n "$1 is not installed. Would you like to install it? (y/n) " >&2
    old_stty_cfg=$(stty -g)
    stty raw -echo
    answer=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
    stty $old_stty_cfg && echo
    if echo "$answer" | grep -iq "^y" ;then
        if [ -x "$(command -v apt)" ]; then
            sudo apt install $1 -y

        elif [ -x "$(command -v brew)" ]; then
            brew install $1
        else
            echo "I'm not sure what your package manager is! Please install $1 on your own and run the 'update' command again."
        fi
    fi
}

config pull >~/.git_update.out
source ~/.vimrc
echo -ne '\n' | vim -c 'PluginInstall' -c 'qa!'
source ~/.bashrc
source ~/.zshrc
tmux source-file ~/.tmux.conf

declare -a packages=('cowsay', 'thefuck', 'zsh')
for package in "${packages[@]}"
do
    echo "Installing ${package}..."
    # prompt_install package
done
