apt-get -y install apt-transport-https
echo "deb https://o-marshmallow.github.io/PocketCHIP-pocket-home/archive jessie main" > /etc/apt/sources.list.d/marshmallow-pocket-chip-home.list
apt-key adv --keyserver hkp://pgp/mit.edu:80 --recv-keys 584F7F9F
echo -e "Package: pocket-home\nPin: version *\nPin-Priority: 1050" > /etc/apt/preferences.d/unpin-pocket-home.pref
apt-get update
apt-get -y install pocket-home

