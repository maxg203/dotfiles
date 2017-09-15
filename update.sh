# Should be a flag so as not to slow down the script when I don't need it to
# source ~/.provision/install_dependencies.sh

config pull >~/.git_update.out
source ~/.vimrc
echo -ne '\n' | vim -c 'PluginInstall' -c 'qa!'
source ~/.bashrc
source ~/.zshrc
tmux source-file ~/.tmux.conf
