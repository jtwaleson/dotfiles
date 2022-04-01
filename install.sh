#!/bin/bash

set -euxo pipefail

sudo apt update
sudo apt install \
    apt-transport-https \
    bzip2 \
    ca-certificates \
    coreutils \
    cron \
    curl \
    default-mysql-client \
    dnsutils \
    dos2unix \
    feh \
    ffmpeg \
    file \
    g++ \
    gcc \
    gimp \
    git \
    git-lfs \
    gnome-screenshot \
    gnupg \
    gparted \
    gzip \
    hdparm \
    i3 \
    imagemagick \
    jq \
    keepassx \
    lsb-release \
    moreutils \
    mtr \
    nmap \
    nmon \
    ntp \
    openssh-client \
    openssh-server \
    pavucontrol \
    postgresql-client \
    powertop \
    procps \
    pwgen \
    python-is-python3 \
    python3-dev \
    python3-pip \
    python3-venv \
    reptyr \
    rsync \
    silversearcher-ag \
    sshfs \
    strace \
    telnet \
    texlive \
    texlive-latex-extra \
    texlive-xetex \
    tig \
    traceroute \
    tree \
    util-linux \
    v4l-utils \
    vim \
    vim-tiny \
    vlc \
    whois \
    xclip \
    zsh \
    nmon # marker

pip3 install requests pytest

#@rm ~/.vimrc ~/.zshrc ~/.config/i3/config

ln -sf ~/dev/dotfiles/vimrc ~/.vimrc
ln -sf ~/dev/dotfiles/zshrc ~/.zshrc
ln -sf ~/dev/dotfiles/i3config ~/.config/i3/config


sudo apt install \
    code \
    google-chrome-stable \
    spotify-client \
    syncthing \
    nmon # marker





# manually install:
# google chrome
# VS Code
# docker
# spotify
