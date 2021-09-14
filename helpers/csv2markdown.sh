#!/usr/bin/env bash

FILENAME=$1
if [ -z "$FILENAME" ] || [ ! -f $FILENAME ]; then
  echo File not exsit.
  exit 1
fi

echo Input: $FILENAME
substring=.csv.md
replacement=.md
NEWFILENAME=$FILENAME.md
NEWFILENAME=${NEWFILENAME/.csv.md/.md}
echo Output: $NEWFILENAME

cat $FILENAME | node $(dirname $0)/csv-to-markdown.js > $NEWFILENAME
