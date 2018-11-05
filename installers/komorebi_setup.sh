#!/bin/bash

wget https://github.com/iabem97/komorebi/releases/download/v2.0/komorebi-2-64-bit.deb

sudo apt-get install gdebi

sudo gdebi komorebi-2-64-bit.deb

sudo apt-get install gstreamer1.0-libav

sudo ln -s /usr/lib/x86_64-linux-gnu/libgtop-2.0.so.11 /usr/lib/x86_64-linux-gnu/libgtop-2.0.so.10
