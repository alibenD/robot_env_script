#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2018 All rights reserved.
# @file: install_ros.bash
# @author: aliben.develop@gmail.com
# @created_date: 2018-11-06 14:33:45
# @last_modified_date: 2018-11-08 08:23:48
# @brief: TODO
# @details: TODO
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`

#---Shell Command
sudo apt update &&
sudo apt install -y \
git \
wget \
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
lua5.1-dev \ &&

sudo sh -c 'echo "deb http://mirrors.ustc.edu.cn/ros/ubuntu/  $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
wget https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -O - | sudo apt-key add - &&
#sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
sudo apt update
sudo apt -y install ros-melodic-desktop-full \
                    ros-melodic-map* \
                    ros-melodic-joy* \
                    ros-melodic-tf*

sudo rosdep init
rosdep update &&
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
echo "source $HOME/catkin_ws/devel/setup.bash" >> ~/.bashrc
source ~/.bashrc
git clone https://github.com/vim/vim.git
cd vim
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
            --prefix=/usr/local
sudo make install
