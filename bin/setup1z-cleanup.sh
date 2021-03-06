#!/bin/sh
#

MYFILES=".bash_history .gitconfig"
#SYSFILES="/boot/credentials.json /etc/wpa_supplicant/wpa_supplicant.conf"
SYSFILES="/boot/credentials.json"

###
check_and_rm1 () {
    echo -n $1
    if [ -f $1 ]; then
	echo -n " ... found"
	sudo rm -f $1
	echo -n " ... removed."
    else
        echo -n " ... not found"
    fi
    echo
}


###
for f in ${MYFILES}; do
    check_and_rm1 ${HOME}/$f
done

for f in ${SYSFILES}; do
    check_and_rm1 $f
done

### modify cmdline.txt
sudo echo `cat /boot/cmdline.txt` quiet 'init=/usr/lib/raspi-config/init_resize.sh' > /tmp/cmdline.txt
sudo cp -fv /boot/cmdline.txt /boot/cmdline.txt.orig
sudo cp -fv /tmp/cmdline.txt /boot

### clean up ssh key
sudo systemctl enable regenerate_ssh_host_keys.service

sudo shutdown -h now 
