#!/usr/bin/env bash

cd $(dirname $0)

find ../queries -type f -name *.sql -exec sh -c 'cat "$@" | npx sql-formatter -u -o "$@"' sh {} \;
