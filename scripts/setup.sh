#!/bin/sh -e

# setup.sh <build-dir> <cache-dir> <env-file>

BUILDPACK_DIR=`cd $(dirname $0); cd ..; pwd`; . $BUILDPACK_DIR/scripts/functions.sh
APP_BUILD_DIR=$1
APP_CACHE_DIR=$2

#-------------------------------------------------------------------------------

runtime_dir () # dir
{
    rm -rf $1
    cp -a $BUILDPACK_DIR/$1 ./
}

#mkdir -p $APP_CACHE_DIR

#cd $APP_CACHE_DIR
#    runtime_dir libraries
#cd -


cd $APP_BUILD_DIR
    runtime_dir libraries
cd -
