## yaourt-tmp-changer
author: jamcha (jamcha.aa@gmail.com)

This program changes system files. Be aware of what this script do.

yaourt-tmp-changer.sh relocates yaourt working directory to a particular user directory for avoiding /tmp restriction under Manjaro AUR.
Don't use this on multi-user environments.

### Usage
This script must be run with root privilege.

Run with the *username* argument.

For example,

    $ sudo bash yaourt-tmp-changer.sh jamcha

### Uninstall
Recovery original files from /etc/yaoutrc.OLD and /etc/makepkg.conf.OLD.

### License
NYSL. (http://www.kmonos.net/nysl/)
