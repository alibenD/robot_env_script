#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2019 All rights reserved.
# @file: install_vim_config.bash
# @author: aliben.develop@gmail.com
# @created_date: 2019-05-24 09:05:20
# @last_modified_date: 2019-05-24 09:07:30
# @brief: TODO
# @details: TODO
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`

#---Shell Command
git clone https://github.com/alibenD/vim.git $HOME/.vim
$HOME/.vim/auto_install.sh
