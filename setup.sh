#!/bin/bash

wget -O theme.zip "https://github.com/polygonix/N-Coded/archive/master.zip"
unzip -d themes theme.zip
mkdir -p /tmp/docker/{data,images}