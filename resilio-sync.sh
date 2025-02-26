wget    https://linux-packages.resilio.com/resilio-sync/key.asc      -O       /etc/apt/trusted.gpg.d/resilio-sync.asc


echo '
deb http://linux-packages.resilio.com/resilio-sync/deb resilio-sync non-free
'  > /etc/apt/sources.list.d/resilio-sync.list








