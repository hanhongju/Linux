echo '
Types: deb
URIs: http://mirrors.ustc.edu.cn/ubuntu/ http://mirrors.aliyun.com/ubuntu/ http://mirrors.163.com/ubuntu/ http://mirrors.tuna.tsinghua.edu.cn/ubuntu/
Suites: noble noble-updates noble-security
Components: main restricted universe multiverse
Signed-By: /usr/share/keyrings/ubuntu-archive-keyring.gpg
'       >     /etc/apt/sources.list.d/ubuntu.sources

apt update



dpkg    -a    --configure
apt     -y    install wget curl brasero rhythmbox vlc net-tools libreoffice libreoffice-l10n-zh-cn libreoffice-help-zh-cn
apt     -y    install hashdeep p7zip-full firefox gparted usb-creator-gtk samba qbittorrent cifs-utils nvidia-driver-libs:i386 libnvidia-gl-535:i386 steam
snap          install firefox
echo    '
0 1 * * *     apt           -y          update
0 2 * * *     apt           -y          full-upgrade
0 3 * * *     apt           -y          autoremove
'       |     crontab
netstat       -plnt




# Ubuntu 24.04.2 LTS 新电脑安装软件
