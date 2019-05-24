#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2019 All rights reserved.
# @file: install_navigation.bash
# @author: aliben.develop@gmail.com
# @created_date: 2019-05-24 08:31:45
# @last_modified_date: 2019-05-24 08:33:39
# @brief: TODO
# @details: TODO
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`

#---Shell Command
git clone git@github.com:ros-planning/navigation.git $HOME/catkin_ws/src/navigation
cd $HOME/catkin_ws && catkin_make_isolated --install --use-ninja
