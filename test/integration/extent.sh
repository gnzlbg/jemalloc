#!/bin/sh

# shellcheck disable=SC2154
if [ "x${enable_fill}" = "x1" ] ; then
  export MALLOC_CONF="junk:false"
fi
