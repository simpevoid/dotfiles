!/bin/bash

 Base and home directory setup
baseDir="$(dirname $(realpath $0))"
homeDir="$baseDir/home/user/"

 Updating system
printf "### Updating system...\n"
doas xbps-install -Syu

 Installing minimal X components
printf "### Installing minimal X components...\n"
doas xbps-install -Sy xorg-server xinit libX11-devel libXft-devel libXinerama-devel font-inconsolata-otf

 Installing build tools
printf "### Installing build tools...\n"
doas xbps-install -Sy git gcc make pkg-config

 Installing man pages
printf "### Installing man pages...\n"
doas xbps-install -Sy man-pages-devel

 Installing multimedia tools
printf "### Installing multimedia tools...\n"
doas xbps-install -Sy mpv mpd ffmpeg yt-dlp

 Installing system monitoring tools
printf "### Installing system monitoring tools...\n"
doas xbps-install -Sy htop

 Installing general tools
printf "### Installing general tools...\n"
doas xbps-install -Sy firefox zathura zathura-pdf-mupdf tmux sxhkd maim feh vim-x11 rsync xz ntfs-3g wget nnn patch alsa-lib-devel

 Installing Intel GPU driver
printf "### Installing Intel GPU driver...\n"
doas xbps-install -Sy xf86-video-intel

 Setting up dotfiles
printf "### Setting up dotfiles...\n"
cp -r $homeDir/. ~

 Installing suckless programs
printf "### Installing suckless programs...\n"
for sucklessProgram in $(ls $homeDir/suckless); do
    cd $homeDir/suckless/$sucklessProgram
    git checkout master
    make clean
    doas make install
done
