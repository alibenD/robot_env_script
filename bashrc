# Added by Aliben for etc
# HISTTIMEFORMAT
export HISTTIMEFORMAT="%Y-%m-%d %H:%M:%S  `whoami`  "
export HISTFILESIZE=10000
export HISTSIZE=10000

alias grep='grep --color'
alias egrep='egrep --color'
alias fgrep='fgrep --color'
alias ls='ls -G'

alias lg=logout
alias vi='vi -X'

# added by Aliben for shell by self
#export PATH="$HOME/project/Shell:$PATH"
export PATH=${PATH}:$(find $HOME/project/Shell -follow -type d | sed '/\/\\./d' | tr '\n' ':' | sed 's/:$//')

# added by Aliben for binding Debian(Virtual) IP to a env var
export MRPT=10.211.55.15
export PROXY_SERVER=139.162.75.77
export DEV_HOST=192.168.1.107
export ROS=10.211.55.16
# V2Ray
# PORT:38096
# UUID:d5501bd9-93ee-4b0c-8f08-25e9cda25c25
#export ALL_PROXY=socks5://127.0.0.1:1081

# Proxy
#export HTTP_PROXY="http[socks5]://127.0.0.1:1081"
#export HTTPS_PROXY="http[socks5]://127.0.0.1:1081"

MANPATH="/Users/aliben/dev/env/homebrew/opt/findutils/libexec/gnuman:$MANPATH"

# Adding Develop Environment with Binary
export DEV_ENV=$HOME/dev/env
export PATH=$HOME/dev/env/homebrew/sbin:$PATH
export PATH=$HOME/dev/env/homebrew/bin:$PATH
export PATH=$HOME/dev/env/bin:$PATH
export PATH=$HOME/dev/env/sbin:$PATH
export PATH=$HOME/dev/env/libexec:$PATH
export PATH=$HOME/dev/env/homebrew/bin:$PATH
#export PATH="/Users/aliben/dev/env/homebrew/opt/findutils/libexec/gnubin:$PATH"
#export PATH="/Users/aliben/dev/env/homebrew/opt/make/libexec/gnubin:$PATH"
export PATH="$HOME/dev/env/homebrew/opt/qt/bin:$PATH"
#export PATH="$HOME/dev/env/homebrew/Cellar/qt//5.11.2/bin:$PATH"

# Adding STM32 tool chain
#export PATH="$HOME/project/stm32/gcc-arm-none-eabi/bin:$PATH"
export PATH="$HOME/dev/env/gnu-mcu-eclipse/arm-none-eabi-gcc/7.2.1-1.1-20180401-0515/bin:$PATH"
#export PATH="/Users/aliben/dev/env/homebrew/Cellar/vim/8.1.0001/bin:$PATH"

# Adding Develop Environment with Lib
#export LIBRARY_PATH=$HOME/dev/env/lib:$LIBRARY_PATH
#export LD_LIBRARY_PATH=$HOME/dev/env/lib:$LD_LIBRARY_PATH
#export LIBRARY_PATH=$HOME/dev/env/homebrew/lib:$LIBRARY_PATH
#export LD_LIBRARY_PATH=$HOME/dev/env/homebrew/lib:$LD_LIBRARY_PATH
#export LIBRARY_PATH=$HOME/dev/env/lib:$LIBRARY_PATH
#export LD_LIBRARY_PATH=$HOME/dev/env/lib:$LD_LIBRARY_PATH
#export LD_LIBRARY_PATH=$HOME/dev/env/homebrew/opt/llvm/lib:$LD_LIBRARY_PATH

# Adding Develop Environment with Lib: RPATH
#export DYLD_FALLBACK_LIBRARY_PATH=$HOME/dev/env/homebrew/lib:$DYLD_FALLBACK_LIBRARY_PATH
#export DYLD_FALLBACK_LIBRARY_PATH=$HOME/dev/env/lib:$DYLD_FALLBACK_LIBRARY_PATH


# Adding Develop Environment with C_INCLUDE
export C_INCLUDE_PATH=$HOME/dev/env/homebrew/include:$C_INCLUDE_PATH
export C_INCLUDE_PATH=$HOME/dev/env/include:$C_INCLUDE_PATH

# Adding Develop Environment with CPLUS_INCLUDE
export CPLUS_INCLUDE_PATH=$C_INCLUDE_PATH:$CPLUS_INCLUDE_PATH

# bash color them
#export TERM="xterm-color"
#PS1='\[\e[37m\][\#]\[\e[34;1m\]\u\[\e[0m\]\[\e[36;1m\]@\[\e[34m\]\h\[\e[37;1m\]: \[\e[36m\]\w\[\e[0m\]\$ '
OS_VERSION=`uname`
if [ "$OS_VERSION" == "Darwin" ]; then
  if brew list | grep coreutils > /dev/null ; then
    PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
    alias ll='ls -F -l --show-control-chars --color=auto'
    alias ls='ls -F --show-control-chars --color=auto'
    eval `gdircolors -b $HOME/.dir_colors`
  fi
fi


# For pkg-config search PATH
export PKG_CONFIG_PATH=$HOME/dev/env/homebrew/lib/pkgconfig:$PKG_CONFIG_PATH
export PKG_CONFIG_PATH=$HOME/dev/env/lib/pkgconfig:$PKG_CONFIG_PATH
export PKG_CONFIG_PATH="$HOME/dev/env/homebrew/opt/qt/lib/pkgconfig":$PKG_CONFIG_PATH

# For CMake search PATH
export LIBS_PATH=$HOME/dev/env/homebrew/lib:$LIBS_PATH
export LIBS_PATH=$HOME/dev/env/lib:$LIBS_PATH
export CMAKE_INCLUDE_PATH=$C_INCLUDE_PATH:$CMAKE_INCLUDE_PATH
export CMAKE_LIBRARY_PATH=$LIBS_PATH:$CMAKE_LIBRARY_PATH

# For installing Chromium
#export PATH="$HOME/dev/src/tool/depot_tools:$PATH"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

#if [ -f ~/.git-completion.bash  ]; then
#    . ~/.git-completion.bash
#fi
[ -f /Users/aliben/dev/env/homebrew/etc/bash_completion ] && . /Users/aliben/dev/env/homebrew/etc/bash_completion

#if [ -f $(brew --prefix)/etc/bash_completion  ]; then
#  . $(brew --prefix)/etc/bash_completion
#fi
export OPENNI2_INCLUDE=/Users/aliben/dev/env/homebrew/include/ni2
export OPENNI2_REDIST=/Users/aliben/dev/env/homebrew/lib/ni2

if [ "$OS_VERSION" == "Darwin" ]; then
  export VIMRUNTIME=$HOME/dev/env/homebrew/share/vim/vim81
fi

#export LDFLAGS="-L/Users/aliben/dev/env/homebrew/opt/openblas/lib:$LDFLAGS"
#export CPPFLAGS="-I/Users/aliben/dev/env/homebrew/opt/openblas/include:$CPPFLAGS"

#For pkg-config to find openblas you may need to set:
#export PKG_CONFIG_PATH="/Users/aliben/dev/env/homebrew/opt/openblas/lib/pkgconfig:$PKG_CONFIG_PATH"
