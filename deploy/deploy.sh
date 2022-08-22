#!/bin/bash

username=vagrant
server=192.168.121.151
src=/shared/linux-configuration
dst=/etc/puppetlabs/code/environments/production

#rsync -av ${src}/* ${username}@${server}:${dst}/
rsync -av ${src}/* ${dst}/
