#!/bin/env bash

GREEN='\033[0;92m'
RED='\033[0;31m'
NC='\033[0m'

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

USER="$(echo $USER)"
FILES=("/home/${USER}/.vimrc" "/home/${USER}/.zshrc" "/home/${USER}/.gitconfig")

COUNTER=0

for file in "${FILES[@]}" 
do
    if [ -e $file ]; then
        echo -e "${RED}$file exists.${NC}"
        let COUNTER++
    fi
done

if [ $COUNTER -gt 0 ]; then
    echo
    echo "Please safely back up the above files before removing them."
    echo "Terminating script."
    exit 1
fi

ln -s ${BASEDIR}/vimrc ~/.vimrc
ln -s ${BASEDIR}/zshrc ~/.zshrc
ln -s ${BASEDIR}/gitconfig ~/.gitconfig

echo -e "${GREEN}Done!${NC}"
