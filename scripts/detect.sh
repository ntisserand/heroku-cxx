#!/bin/sh -e

# detect.sh <build-dir>

BUILDPACK_DIR=`cd $(dirname $0); cd ..; pwd`; #. $BUILDPACK_DIR/scripts/functions.sh

#-------------------------------------------------------------------------------

echo DETECT $*
BUILD_DIR=$1
cd $BUILD_DIR
ls -U *.cpp > /dev/null 2>&1 && (echo "C++") || exit 1
