#!/bin/sh

while read -r nm
do
  n=$( echo "${nm}" |tr ':' ' ' |awk '{print $1}' )
  echo "#undef je_${n}"
done < "${1}"
