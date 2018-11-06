#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2018 All rights reserved.
# @file: install_ros.bash
# @author: aliben.develop@gmail.com
# @created_date: 2018-11-06 14:33:45
# @last_modified_date: 2018-11-06 18:48:38
# @brief: TODO
# @details: TODO
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`

#---Shell Command
sudo apt update
sudo apt install -y \
git \
python-rosinstall \
python-rosinstall-generator \
python-wstool \
build-essential \
vim \
ctags \
libopencv-* \


sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
sudo apt update
sudo apt -y install ros-melodic-desktop-full \
                    ros-melodic-map* \
                    ros-melodic-joy* \
                    ros-melodic-tf*

sudo rosdep init
rosdep update
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
echo "source $HOME/catkin_ws/devel/setup.bash" >> ~/.bashrc
source ~/.bashrc

