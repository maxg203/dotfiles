#!/bin/bash

echo 'INSTALLING DEPENDENCIES...'
source ~/.provision/install_dependencies.sh

echo 'RELOADING...'
source ~/.provision/_reload.sh >/dev/null &

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
