#!/bin/bash
# reference: https://gae-fan.blogspot.jp/2014/10/yaourt-tmp.html

sed -i -e "s/TMPDIR=/tmp/TMPDIR=/home/user/tmp/yaourt/g" /etc/yaourtrc && sed -i -e "s/BUILDDIR=/tmp/BUILDDIR=/home/user/tmp/makepkg/g" /etc/makepkg.conf
mkdir /home/user/tmp/ && mkdir /home/user/tmp/yaourt && mkdir /home/user/tmp/makepkg
chown -R /home/user/tmp user
chown -R /home/user/tmp/* user
chgrp -R /home/user/tmp user
chgrp -R /home/user/tmp/* user
