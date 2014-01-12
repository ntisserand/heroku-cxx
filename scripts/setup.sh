#!/bin/sh -ex

# setup.sh <build-dir> <cache-dir> <env-file>

BUILDPACK_DIR=`cd $(dirname $0); cd ..; pwd`; . $BUILDPACK_DIR/scripts/functions.sh
APP_BUILD_DIR=$1
APP_CACHE_DIR=$2

#-------------------------------------------------------------------------------

mkdir -p $APP_CACHE_DIR

cd $APP_CACHE_DIR
    ln -sf $BUILDPACK_DIR/headers
    ln -sf $BUILDPACK_DIR/libraries
cd -
