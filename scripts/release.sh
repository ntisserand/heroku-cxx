#!/bin/sh -e

# release.sh <build-dir>

# BUILDPACK_DIR=`cd $(dirname $0); cd ..; pwd`; . $BUILDPACK_DIR/scripts/functions.sh

#-------------------------------------------------------------------------------

cat <<EOF
---
config_vars:
PATH: /app/bin:/usr/local/bin:/usr/bin:/bin
EOF
