#!/bin/sh

# shellcheck disable=SC2154
if [ "x${enable_prof}" = "x1" ] ; then
  export MALLOC_CONF="prof:true,prof_active:false,prof_gdump:true"
fi

