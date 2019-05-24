#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2019 All rights reserved.
# @file: install_cartographer.bash
# @author: aliben.develop@gmail.com
# @created_date: 2019-05-23 18:50:06
# @last_modified_date: 2019-05-24 08:28:39
# @brief: TODO
# @details: TODO
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`

#---Shell Command
sudo apt update
sudo apt install -y python-wstool python-rosdep ninja-build
mkdir -p $HOME/catkin_ws/src
cd $HOME/catkin_ws
wstool init src
wstool merge -t src https://raw.githubusercontent.com/googlecartographer/cartographer_ros/master/cartographer_ros.rosinstall
wstool update -t src

src/cartographer/scripts/install_proto3.sh
sudo rosdep init
rosdep update
rosdep install --from-paths src --ignore-src --rosdistro=${ROS_DISTRO} -y

catkin_make_isolated --install --use-ninja
echo "source $HOME/catkin_ws/devel_isolated/setup.bash" >> $HOME/.bashrc
