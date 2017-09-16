#!/bin/bash

# TODO: Give prompt N as default like it says rather than forcing user input
while true; do
    read "?Would you like to check dependencies [y/N]?" yn
    case $yn in
        [Yy]* ) source ~/.provision/install_dependencies.sh; break;;
        *) break;;
    esac
done
source ~/update.sh >/dev/null &

for i in `seq 0 10`
do
    if [ "${i}" -eq "0" ]; then
        echo -ne "0%\r"
    else
        echo -ne "${i}0%\r"
    fi
    sleep 1;
done

echo 'Updated successfully!'
