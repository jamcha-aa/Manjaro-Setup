## Manjaro-Setup
author: jamcha (jamcha.aa@gmail.com)

This program changes system files. Be aware of what this script do.

Manjaro-setup.sh relocates yaourt working directory to a particular user directory for avoiding /tmp restriction under Manjaro AUR.
Don't use this on multi-user environments.

### Install
1. In manjaro-setup.sh, edit "user" to your user name.
2. **BACKUP** /etc/yaourtrc and /etc/makepkg.conf.
3. Run manjaro-setup.sh with root privilege.

### License
NYSL. (http://www.kmonos.net/nysl/)
