#!/bin/sh
SCRIPT_PATH="`realpath ${BASH_SOURCE[0]}`"
SCRIPT_DIR="`dirname "${SCRIPT_PATH}"`"
(cd "$SCRIPT_DIR"; rm -rf autoload plugged backup_files swap_files undo_files node_modules)
