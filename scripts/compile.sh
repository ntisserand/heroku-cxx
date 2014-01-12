#!/bin/sh -ex

# compile.sh <build-dir> <cache-dir> <env-file>

BUILDPACK_DIR=`cd $(dirname $0); cd ..; pwd`; . $BUILDPACK_DIR/scripts/functions.sh
APP_BUILD_DIR=$1
APP_CACHE_DIR=$2

#-------------------------------------------------------------------------------

# Setup
$BUILDPACK_DIR/scripts/setup.sh $APP_BUILD_DIR $APP_CACHE_DIR

# Build
cd $APP_BUILD_DIR
    if [ -f "Makefile" ]; then
        report "Makefile found."
        make                             \
            BUILDPACK_DIR=$BUILDPACK_DIR \
            APP_CACHE_DIR=$APP_CACHE_DIR \
            APP_BUILD_DIR=$APP_BUILD_DIR
        report "Compilation successful."
    else
        report "Error: No Makefile found."
        exit 1
    fi
cd -
