#!/bin/sh

while read -r nm
do
  n=$( echo "${nm}" |tr ':' ' ' |awk '{print $1}' )
  echo "#define je_${n} JEMALLOC_N(${n})"
done < "${1}"
