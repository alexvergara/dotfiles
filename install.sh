#!/usr/bin/bash

os=$1
origin=`pwd`
datetime=`date +'%Y%m%d%H%M%S'`

cd ~

#files=(.zshrc .config/nvim .config/tmux .config/alacritty .mozilla/firefox/firefox-themes)
files=(.mozilla/firefox/firefox-themes)

#tar -cvf "dotfiles-$datetime-back.tar" $files

tarfiles=''
for ((i=0; i < ${#files[@]}; i++)); do
  #ls "${files[$i]}"
  file="${files[$i]}"
  if [[ -e $file ]]; then
    tarfiles="$tarfiles $file"
  fi
done

tar --exclude='.git' --exclude='themes' -cvf "_dotfiles-$datetime.tar" $tarfiles && rm -rf $tarfiles

#
for ((i=0; i < ${#files[@]}; i++)); do
  file="${files[$i]}"
  parsedfile=`echo $file | sed "s/\.//"`
  echo "$origin/$os/home/$parsedfile/current $file"
  ln -s "$origin/$os/home/$parsedfile/current" $file
done
