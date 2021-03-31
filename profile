#!/bin/sh
# Profile File


# Setup Default Directories
export XDG_CACHE_HOME="$HOME/.local/tmp"
export XDG_CONFIG_HOME="$HOME/.local/etc"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/var"
export XDG_BIN_HOME="$HOME/.local/bin"
export XDG_LIB_HOME="$HOME/.local/lib"

# Handle Exceptions
export CHROME_CONFIG_HOME="${XDG_STATE_HOME}"
export GNUPGHOME="${XDG_STATE_HOME}/gnupg"
export LESSHISTFILE="${XDG_STATE_HOME}/less/history"
export LESSKEY="${XDG_STATE_HOME}/less/keys"
export SCREENRC="${XDG_CONFIG_HOME}/screen/screenrc"
export IPYTHONDIR="${XDG_CONFIG_HOME}/jupyter"
export JUPYTER_CONFIG="${XDG_CONFIG_HOME}/jupyter"
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc

# Force Bash to use XDG system
if [[ ! -z ${BASH+x} ]]
then
    if [[ -d "$XDG_CONFIG_HOME/bash" ]]
    then
        . "$XDG_CONFIG_HOME/bash/login"
    fi
fi

# Applications
export EDITOR='nvim'
export PAGER='less'
export TERM='xterm-256color'

# Environmnet Variables
export WORKSPACE=${HOME}"/Workspace"

# Settings
export RANGER_LOAD_DEFAULT_RC=FALSE
export PYTHONDONTWRITEBYTECODE=1

# Path
[ -d $XDG_BIN_HOME ] && export PATH="$PATH:$XDG_BIN_HOME"
export PYTHONPATH="${XDG_LIB_HOME}:${PYTHONPATH}"
export CPATH="${XDG_INCLUDE_HOME}"

