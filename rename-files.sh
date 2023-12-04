#!/bin/bash

FILEPATTERN=$1
OLDNAME=$2
NEWNAME=$3

for file in ${FILEPATTERN}; do
    echo "Renaming file $file to ${file/$OLDNAME/$NEWNAME}"
    mv "$file" "${file/$OLDNAME/$NEWNAME}"
done