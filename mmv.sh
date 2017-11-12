#!/bin/sh

exp=$1
shift

for f in $*; do
    name=$(echo "$f" | sed "$exp")
    mv "$f" "$name";
done
