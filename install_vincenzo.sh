#!/bin/bash
############################
# Doesn't work without some setup.
# ~/.zshrc will need to be moved manually.
# Use Source Code Pro as the font
############################

########## Variables

my_theme=vincenzo.zsh-theme
old_dir=~/old_files
dotfiles="zshrc"

echo "Installing oh-my-zsh theme."
ln -s $PWD/$my_theme ~/.oh-my-zsh/themes/$my_theme
mkdir -p $old_dir

echo "Installing atom config."
mv ~/.atom/config.cson $old_dir/
ln -s $PWD/config.cson ~/.atom/config.cson
mkdir -p $old_dir
# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
echo "Making old dotfile directoy."
for file in $dotfiles; do
  echo "Moving any existing dotfiles from ~ to $old_dir"
    mv ~/.$file $old_dir/
    echo "Creating symlink to $file in home directory."
    ln -s $PWD/.$file ~/.$file
done
