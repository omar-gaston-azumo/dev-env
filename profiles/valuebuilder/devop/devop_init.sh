#!/bin/bash
if [ ! -d "/var/www/html/web/uploads" ]; then
    mkdir -p /var/www/html/web/uploads
fi

if [ ! -d "/var/www/html/web/results" ]; then
    mkdir -p /var/www/html/web/results
fi
