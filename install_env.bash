#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2019 All rights reserved.
# @file: install_env.bash
# @author: aliben.develop@gmail.com
# @created_date: 2019-05-23 16:52:04
# @last_modified_date: 2019-05-24 09:54:49
# @brief: TODO
# @details: TODO
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`

#---Shell Command

sudo apt update
sudo apt install -y \
python-rosinstall \
python-rosinstall-generator \
python-wstool \
build-essential \
vim \
ctags \
libopencv-* \
libncurses5-dev \
libgnome2-dev \
libgnomeui-dev \
libgtk2.0-dev \
libatk1.0-dev \
libbonoboui2-dev \
libcairo2-dev \
libx11-dev \
libxpm-dev \
libxt-dev \
python-dev \
python3-dev \
ruby-dev \
lua5.1 \
lua5.1-dev \
git \
htop

if [ ! -d ~/project/src/vim ]; then
  git clone https://github.com/vim/vim.git ~/project/src/vim
fi
cd ~/project/src/vim
./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp=yes \
            --enable-pythoninterp=yes \
            --with-python-config-dir=/usr/lib/python2.7/config \ # pay attention here check directory correct
            --enable-python3interp=yes \
            --with-python3-config-dir=/usr/lib/python3.5/config \
            --enable-perlinterp=yes \
            --enable-luainterp=yes \
            --enable-gui=gtk2 \
            --enable-cscope \
            --prefix=$HOME/dev/env
sudo make install
