#!/bin/bash
# reference: https://gae-fan.blogspot.jp/2014/10/yaourt-tmp.html

if [ $# -ne 1 ]; then
  echo "Input your name."
  exit 1
fi

cp /etc/yaourtrc /etc/yaourtrc.OLD
cp /etc/makepkg.conf /etc/makepkg.conf.OLD
sed -i -e "s/\\#TMPDIR=\"\\/tmp/TMPDIR=\"\\/home\\/$1\\/tmp\\/yaourt/g" /etc/yaourtrc
sed -i -e "s/\\#BUILDDIR=\\/tmp\\/makepkg/BUILDDIR=\\/home\\/$1\\/tmp\\/makepkg/g" /etc/makepkg.conf
mkdir -p /home/$1/tmp/yaourt && mkdir /home/$1/tmp/makepkg
chown -R $1:$1 /home/$1/tmp
