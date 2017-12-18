!#/bin/bash
echo "Installing openbox, feh and tint2"
sudo pacman -S openbox feh tint2
echo "Installing numix"
sudo pacaur -S numix-gtk-theme
echo "Setting up the dotfiles"
mkdir ~/.config/openbox
mkdir ~/.config/tint2
cp .fehbg ~/
cp autostart ~/.config/openbox/
cp .Xresources ~/
rm ~/.config/tint2/tint2rc
cp tint2rc ~/.config/tint2
sudo rm /usr/share/themes/Numix/openbox-3/themerc
sudo cp themerc /usr/share/themes/Numix/openbox-3/themerc
sudo rm /etc/X11/openbox/menu.xml
sudo cp menu.xml /etc/X11/openbox
cp wallpaper.jpg ~/
echo "Installing xterm"
sudo apt-get install xterm
echo 'PS1="[\W] "' > ~/.bashrc
echo "All done. Now, restart openbox and start the terminal emulator to see the difference :D"
