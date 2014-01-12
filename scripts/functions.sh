#!/bin/sh -ex

# Script usage:
#
# BUILDPACK_DIR=`cd $(dirname $0); cd ..; pwd`; . $BUILDPACK_DIR/scripts/functions.sh
#
#-------------------------------------------------------------------------------

dir_var ()
{
    eval "dir_path=\${$1}"
    echo Directory: $1=$dir_path
    if [ -f "Makefile" ]; then
        ls -la $dir_path
    else
        echo "<non-existent>"
    fi
}

report ()
{
    echo "-----> "$*
}
