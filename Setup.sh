!#/bin/bash
echo "Installing openbox, feh and conky"
sudo apt-get install openbox feh conky conky-all
echo "Adding numix ppa"
sudo apt-add-repository ppa:numix/ppa
echo "Updating repositories"
sudo apt-get update
echo "Installing numix"
sudo apt-get install numix-gtk-theme
echo "Setting up the dotfiles"
cp .fehbg ~/
cp autostart ~/.config/openbox/
sudo rm /etc/conky/conky.conf
sudo cp conky.conf /etc/conky
sudo rm /usr/share/themes/Numix/themerc
sudo cp themerc /usr/share/themes/Numix
cp wallpaper.jpg ~/
echo "Installing fish"
sudo apt-get install fish
echo "Making fish start after opening the terminal"
echo "fish" > ~/.bashrc
echo "Now, set the GNOME Terminal background color to #272D3A (There's no proper way of doing that via CLI :/"
echo "After doing that, you're allset to using my rice! Login into Openbox and enjoy!"
