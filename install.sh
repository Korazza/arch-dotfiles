#!/usr/bin/bash

echo -e "\nInstalling Xenomorph dotfiles\n"

read -p "Proceed? (y/n) " -n 1 answer
if ! [[ "$answer" =~ [yY] ]]; then
        echo -e "\n"; exit 0
fi

yay_exists=$(pacman -Qi yay &> /dev/null; echo $?)

if [ $yay_exists -eq 1 ]; then
  echo -e "\nInstalling yay"
  sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
fi

echo -e "\nInstalling packages"
sudo pacman -S --needed - < ~/dotfiles/pkglist.txt

echo -e "\nInstalling AUR packages"
yay -S --nocleanmenu --nodiffmenu --noeditmenu --noupgrademenu --removemake --needed - < ~/dotfiles/foreignpkglist.txt

echo -e "\nSetting zsh as default shell"
chsh -s $(type zsh | awk '{print $3}')

echo -e "\nCopying dotfiles"
rm -rf ~/dotfiles/.git*
rm ~/dotfiles/LICENSE
rm ~/dotfiles/README.MD
rm ~/dotfiles/foreignpkglist.txt
rm ~/dotfiles/pkglist.txt
rm ~/dotfiles/screenshot.png
cp -rali ~/dotfiles/* ~

echo -e "\nDone"
echo -e "\n"; exit 0%
