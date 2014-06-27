#!/bin/sh -ex

# Script usage:
#
# BUILDPACK_DIR=`cd $(dirname $0); cd ..; pwd`; . $BUILDPACK_DIR/scripts/functions.sh
#
#-------------------------------------------------------------------------------

#DEBUG=1

dir_var () # dir
{
    if [ !$DEBUG ]; then return; fi

    eval "dir_path=\${$1}"
    echo Directory: $1=$dir_path
    if [ -f $dir_path ]; then
        ls -la $dir_path
    else
        echo "<non-existent>"
    fi
}

report ()
{
    echo "-----> "$*
}

app_cache_dir () # path
{
    rm -rf $APP_CACHE_DIR/$1
    cp -a  $BUILDPACK_DIR/$1 $APP_CACHE_DIR/
}

app_build_dir () # poth
{
    rm -rf $APP_BUILD_DIR/$1
    cp -a  $BUILDPACK_DIR/$1 $APP_BUILD_DIR/
}
