#!/bin/sh
SCRIPT_PATH="`realpath ${BASH_SOURCE[0]}`"
SCRIPT_DIR="`dirname "${SCRIPT_PATH}"`"
(cd "$SCRIPT_DIR"; mkdir -p {backup_files,swap_files,undo_files})
(cd "$SCRIPT_DIR"; nvim -u init_plugins.vim)
(cd "$SCRIPT_DIR"; npm install)
echo "Add node_modules/.bin/eslint to your path"
