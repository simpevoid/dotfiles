#!/bin/bash

# Define base and home directories
baseDir="$(dirname $(realpath $0))"
homeDir="$baseDir/home/user/"

# Update system
printf "### Updating system...\n"
doas xbps-install -Syu

# Install minimal Xorg components
printf "### Installing minimal X components...\n"
doas xbps-install -Sy xorg-server xinit libX11-devel libXft-devel libXinerama-devel font-inconsolata-otf

# Install build tools
printf "### Installing build tools...\n"
doas xbps-install -Sy git gcc make pkg-config

# Install man pages
printf "### Installing man pages...\n"
doas xbps-install -Sy man-pages-devel

# Install multimedia tools
printf "### Installing multimedia tools...\n"
doas xbps-install -Sy mpv mpd ffmpeg yt-dlp

# Install system monitoring tools
printf "### Installing system monitoring tools...\n"
doas xbps-install -Sy htop

# Install general tools
printf "### Installing general tools...\n"
doas xbps-install -Sy firefox zathura zathura-pdf-mupdf tmux sxhkd maim feh vim-x11 rsync xz ntfs-3g wget nnn patch alsa-lib-devel

# Install Intel GPU driver
printf "### Installing Intel GPU driver...\n"
doas xbps-install -Sy xf86-video-intel

# Setting up dotfiles
printf "### Setting up dotfiles...\n"
cp -r $homeDir/. ~

# Install additional tools and utilities (optional)
printf "### Installing additional utilities...\n"
doas xbps-install -Sy neofetch pass fuse-exfat 

# Install and configure Suckless programs
printf "### Installing Suckless programs...\n"
for sucklessProgram in $(ls $homeDir/suckless); do
    cd $homeDir/suckless/$sucklessProgram
    git checkout master
    make clean
    doas make install
done

# Final cleanup or additional setup
printf "### Setup complete! Enjoy your system!\n"
