#!/bin/bash

apt-get update &> /dev/null
updates=$(apt-get upgrade -s |grep -P '^\d+ upgraded'|cut -d" " -f1)
echo $updates
