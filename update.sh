config pull >~/.git_update.out
source ~/.vimrc
echo -ne '\n' | vim -c 'PluginInstall' -c 'qa!'
source ~/.bashrc
tmux source-file ~/.tmux.conf
