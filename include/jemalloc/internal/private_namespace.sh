#!/bin/sh

for file in "${@}"
do
    while read -r symbol
    do
        echo "#define ${symbol} JEMALLOC_N(${symbol})"
    done < "${file}"
done
