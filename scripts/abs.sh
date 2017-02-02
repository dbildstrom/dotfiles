#!/bin/sh

function abspath()
{
    local INPATH="$1"
    if [[ -z "${INPATH}" ]];then
        echo "Missing path argument"
        exit -1
    fi
    local DIRNAME=`dirname "${INPATH}"`
    local PATHEN=`cd "${DIRNAME}"; pwd -P`
    if [[ -f "$INPATH" ]];then
        FILENAME=`basename "${INPATH}"`
        PATHEN="${PATHEN}/${FILENAME}"
    fi
    echo "${PATHEN}"
}

abspath "$1"
