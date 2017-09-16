install_system() {
    if [ -x "$(command -v brew)" ]; then
        brew install $1

    elif [ -x "$(command -v apt)" ]; then
        sudo apt install $1 -y
    else
        echo "I'm not sure what your package manager is! Please install $1 on your own and run the 'update' command again."
    fi
}

if [ -x "$(command -v apt-get)" ]; then
    sudo apt-get update -y
fi

declare -a system_packages=('cowsay' 'nodejs-legacy' 'npm' 'thefuck' 'zsh')
for package in "${system_packages[@]}"
do
    echo "Installing ${package}..."
    install_system ${package}
done

nvm install 7.7.1
nvm use 7.7.1

declare -a node_modules=('pure-prompt')
for module in "${node_modules[@]}"
do
    npm install -g ${module}
done
