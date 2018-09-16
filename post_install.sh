#!/bin/sh

sysrc "nginx_enable=YES"
service nginx restart
