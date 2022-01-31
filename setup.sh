#!/bin/bash

listsymlinks=('.vimrc' '.bashrc' '.bash_profile' '.config');

for ELEMENT in list_of_symlinks;
do
    rm -rf ~/$ELEMENT
    ln -s .dotfiles/$ELEMENT
done


# create the vim folder
if [[ ! -d "~/.vim" ]]
then 
    mkdir -p "~/.vim"
fi

git clone https://github.com/flazz/vim-colorschemes.git ~/.vim

sudo paru -s alacritty-themes

git clone https://github.com/more-stuff/wallpapers /usr/share/backgrounds/wallpapers

sudo pacman -S python, neovim


