#!/bin/bash
# reference: https://gae-fan.blogspot.jp/2014/10/yaourt-tmp.html

cp /etc/yaourtrc /etc/yaourtrc.OLD
cp /etc/makepkg.conf /etc/makepkg.conf.OLD
sed -i -e "s/\\#TMPDIR=\"\\/tmp/TMPDIR=\"\\/home\\/user\\/tmp\\/yaourt/g" /etc/yaourtrc
sed -i -e "s/\\#BUILDDIR=\\/tmp\\/makepkg/BUILDDIR=\\/home\\/user\\/tmp\\/makepkg/g" /etc/makepkg.conf
mkdir -p /home/user/tmp/yaourt && mkdir /home/user/tmp/makepkg
chown -R user:user /home/user/tmp

