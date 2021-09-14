#!/usr/bin/env bash

FILENAME=$1
if [ -z "$FILENAME" ] || [ ! -f $FILENAME ]; then
  echo File not exsit.
  exit 1
fi

echo The most rising
grep "⬆️" $FILENAME | sort -k13,13nr -k4,4n

echo
echo

echo Most dropped
grep "⬇️" $FILENAME | sort -k13,13nr -k4,4n
