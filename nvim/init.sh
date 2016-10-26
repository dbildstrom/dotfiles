#!/bin/sh
SCRIPT_PATH="`realpath ${BASH_SOURCE[0]}`"
SCRIPT_DIR="`dirname "${SCRIPT_PATH}"`"
(cd "$SCRIPT_DIR"; nvim -u init_plugins.vim)
