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
    libnotify-bin \
    lsb-release \
    moreutils \
    mtr-tiny \
    nmap \
    nmon \
    neovim \
    python3-neovim \
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
    smartmontools \
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
    wait-for-it \
    whois \
    xclip \
    zsh \
    nmon # marker

pip3 install \
    Flask \
    MonkeyType \
    black \
    boto3 \
    jupyter \
    mypy \
    numpy \
    opencv-python \
    pyflakes \
    pytest \
    requests # marker

ln -sf ~/dev/dotfiles/vimrc ~/.vimrc
ln -sf ~/dev/dotfiles/zshrc ~/.zshrc
ln -sf ~/dev/dotfiles/i3config ~/.config/i3/config
ln -sf ~/dev/dotfiles/gitconfig ~/.gitconfig
ln -sf ~/dev/dotfiles/gitconfig_easee ~/.gitconfig_easee

gsettings set org.gnome.gnome-screenshot auto-save-directory "~/Downloads/"

test -d ~/.vim/bundle/Vundle.vim || (mkdir -p ~/.vim/bundle && git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim)

vim +BundleInstall! +qall

mkdir -p ~/.cache/vim-{swap,undo}

sudo apt install \
    code \
    google-chrome-stable \
    spotify-client \
    syncthing \
    docker-ce docker-ce-cli containerd.io \
    nmon # marker


sudo groupadd -f docker

sudo usermod -aG docker $USER

sudo update-alternatives --set editor /usr/bin/vim.basic

sudo systemctl enable syncthing@jouke.service


# manually install:
aws help | cat # awscli
