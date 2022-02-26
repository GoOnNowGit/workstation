#!/usr/bin/env bash

BASE="${PWD}"

ln -vsf "${BASE}"/.zshrc ~
ln -vsf "${BASE}"/.exports ~
ln -vsf "${BASE}"/.functions ~
ln -vsf "${BASE}"/.aliases ~
ln -vsf "${BASE}"/.vimrc ~

ln -vsf "${BASE}"/.gitconfig ~

ln -vsf "${BASE}"/.gnupg/gpg.conf ~/.gnupg
