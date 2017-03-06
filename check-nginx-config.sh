#!/bin/sh
mv /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf.saved
cp $1 /etc/nginx/conf.d/default.conf
nginx -t
RESULT=$?
mv /etc/nginx/conf.d/default.conf.saved /etc/nginx/conf.d/default.conf
exit $RESULT
