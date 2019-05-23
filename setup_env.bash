#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2019 All rights reserved.
# @file: setup_env.bash
# @author: aliben.develop@gmail.com
# @created_date: 2019-05-23 16:54:27
# @last_modified_date: 2019-05-23 17:27:21
# @brief: TODO
# @details: TODO
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`

#---Shell Command
mkdir -p ~/dev/env
cat ./bashrc >> ~/.bashrc
