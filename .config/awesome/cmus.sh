#!/usr/bin/env bash

name=$(cmus-remote -Q | grep title | cut -d " " -f3-)

if [ ${#name} -gt 30 ]
then
    name=$(printf '%.27s...\n' "$name")
else
    name=$(printf '%s\n' "$name")
fi

echo "Now Playing:" "$name"
