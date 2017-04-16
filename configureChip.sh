#! /bin/sh

apt-get update
apt-get -y upgrade

apt-get -y install git locales xinput-calibrator

cd /opt
git clone https://github.com/KoljaWindeler/CHIP_TZATZIFFY.git
/opt/CHIP_TZATZIFFY/overlay/chip/install.sh
cp /etc/X11/xorg.conf /etc/X11/xorg.conf.orig
cd ~

cp /usr/sbin/pocketchip-load /usr/sbin/pocketchip-load-backup
wget -O /usr/sbin/pocketchip-load https://raw.githubusercontent.com/NextThingCo/pocketchip-load/al/inputFixes/pocketchip-load/sbin/pocketchip-load
chmod +x /usr/sbin/pocketchip-load
wget -O /usr/share/X11/xkb/symbols/pocketchip https://raw.githubusercontent.com/NextThingCo/pocketchip-configs/a524554d0c2b8715f4b7131e68055b645dcb140b/pocketchip-configs/X11/xkb/symbols/pocketchip

cd /lib/firmware/nextthingco/chip
ln -s early/*.dtbo .

