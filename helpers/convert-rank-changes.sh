#!/usr/bin/env bash

FILENAME=$1
if [ -z "$FILENAME" ] || [ ! -f $FILENAME ]; then
  echo File not exsit.
  exit 1
fi

cat $FILENAME | sed 's/| u /| ⬆️ /' | sed 's/| d /| ⬇️ /' > $FILENAME.tmp && mv $FILENAME.tmp $FILENAME
