#!/bin/sh

for i in $(autoconf); do
    echo "$i"
    if ! $i; then
	      echo "Error $? in $i"
	      exit 1
    fi
done

echo "./configure --enable-autogen ${*}"

if ! ./configure --enable-autogen "${@}"; then
    echo "Error $? in ./configure"
    exit 1
fi
