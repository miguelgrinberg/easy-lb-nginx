#!/bin/sh
./watcher.sh &
exec nginx -g 'daemon off;'
