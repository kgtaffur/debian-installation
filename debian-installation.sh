#!/bin/sh
apt-get update && apt-get upgrade -y

apt-get install openbox obconf mousepad tint2 xfce4-screenshooter ristretto atril lightdm compton 
lxappearance rofi alsa-utils volumeicon-alsa unzip sudo pcmanfm git vim curl wget gnome-backgrounds 
rar unrar vlc lightdm-gtk-greeter-settings pavucontrol pulseaudio ibus nitrogen lxterminal xfce4-clipman -y

curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
apt-get update && apt-get install spotify-client -y

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
apt-get install ./google-chrome-stable_current_amd64.deb -y

wget https://github.com/shaggyz/openbox-tenebris/releases/download/1.0.0/tenebris.obt

wget https://noto-website-2.storage.googleapis.com/pkgs/NotoColorEmoji-unhinted.zip
mkdir .fonts
unzip NotoColorEmoji-unhinted.zip -d ~/.fonts
mkdir -p ~/.config/fontconfig
touch ~/.config/fontconfig/fonts.conf
echo "<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE fontconfig SYSTEM "fonts.dtd">
<fontconfig>
  <alias>
    <family>serif</family>
    <prefer>
      <family>Noto Color Emoji</family>
    </prefer>
  </alias>
  <alias>
    <family>sans-serif</family>
    <prefer>
      <family>Noto Color Emoji</family>
    </prefer>
  </alias>
  <alias>
    <family>monospace</family>
    <prefer>
      <family>Noto Color Emoji</family>
    </prefer>
  </alias>
</fontconfig>" >> ~/.config/fontconfig/fonts.conf
fc-cache -f -v

wget "https://fonts.google.com/download?family=Roboto|Roboto%20Mono"
unzip 'download?family=Roboto|Roboto Mono' -d ~/.fonts

rm google-chrome-stable_current_amd64.deb NotoColorEmoji-unhinted.zip "download?family=Roboto|Roboto Mono"
