!#/bin/bash
echo "Installing openbox, feh and tint2"
sudo apt-get install openbox feh tint2
echo "Adding numix ppa"
sudo apt-add-repository ppa:numix/ppa
echo "Updating repositories"
sudo apt-get update
echo "Installing numix"
sudo apt-get install numix-gtk-theme
echo "Setting up the dotfiles"
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
