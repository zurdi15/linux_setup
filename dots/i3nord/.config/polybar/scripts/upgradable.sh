#!/bin/bash

updates=$(apt-get upgrade -s | grep -P '^\d+ *'|cut -d" " -f1)
echo $updates
