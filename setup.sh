#!/bin/sh

if [ -z $XDG_CONFIG_HOME ]
then
    XDG_CONFIG_HOME="~/.config"
fi

if [ ! -d $XDG_CONFIG_HOME ]
then
    mkdir $XDG_CONFIG_HOME
fi

sudo ln -s ~/.dotfiles/resolution.sh /usr/local/bin

ln -s ~/.dotfiles/.xinitrc $HOME
ln -s ~/.dotfiles/bash/git-prompt.sh $HOME
ln -s ~/.dotfiles/bash/.bash_profile $HOME
ln -s ~/.dotfiles/bash/.bashrc $HOME
ln -s ~/.dotfiles/vim/.vimrc $HOME

ln -s ~/.dotfiles/sxhkd/ $XDG_CONFIG_HOME
ln -s ~/.dotfiles/bspwm/ $XDG_CONFIG_HOME
ln -s ~/.dotfiles/picom/ $XDG_CONFIG_HOME
ln -s ~/.dotfiles/polybar/ $XDG_CONFIG_HOME
ln -s ~/.dotfiles/kitty/ $XDG_CONFIG_HOME
ln -s ~/.dotfiles/rofi/ $XDG_CONFIG_HOME
ln -s ~/.dotfiles/tmux/ $XDG_CONFIG_HOME
ln -s ~/.dotfiles/wezterm/ $XDG_CONFIG_HOME
