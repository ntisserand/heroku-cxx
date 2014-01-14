#!/bin/sh -e

# setup.sh <build-dir> <cache-dir> <env-file>

BUILDPACK_DIR=`cd $(dirname $0); cd ..; pwd`; . $BUILDPACK_DIR/scripts/functions.sh
APP_BUILD_DIR=$1
APP_CACHE_DIR=$2

#-------------------------------------------------------------------------------

mkdir -p $APP_CACHE_DIR

app_cache_dir sources

app_build_dir libraries
