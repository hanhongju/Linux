echo   'Types: deb
URIs: http://mirrors.ustc.edu.cn/ubuntu/ http://mirrors.aliyun.com/ubuntu/ http://mirrors.163.com/ubuntu/ http://mirrors.tuna.tsinghua.edu.cn/ubuntu/
Suites: noble noble-updates noble-security
Components: main restricted universe multiverse
Signed-By: /usr/share/keyrings/ubuntu-archive-keyring.gpg
'       >     /etc/apt/sources.list.d/ubuntu.sources
# Comprehensive R Archive Network mirror sources
wget    https://mirrors.tuna.tsinghua.edu.cn/CRAN/bin/linux/ubuntu/marutter_pubkey.asc    -O    /etc/apt/trusted.gpg.d/cran40.asc
wget    https://packages.microsoft.com/keys/microsoft.asc   -O    /etc/apt/trusted.gpg.d/microsoft.asc
echo    '
deb https://mirrors.tuna.tsinghua.edu.cn/CRAN/bin/linux/ubuntu noble-cran40/
deb [arch=amd64,arm64,armhf] https://packages.microsoft.com/repos/code/ stable main
'     >    /etc/apt/sources.list.d/extra.list


apt update




ubuntu-drivers autoinstall
dpkg    -a     --configure
apt     -y     install wget curl brasero rhythmbox smplayer net-tools libreoffice libreoffice-l10n-zh-cn libreoffice-help-zh-cn
apt     -y     install hashdeep p7zip-full firefox gparted usb-creator-gtk samba qbittorrent cifs-utils steam thunderbird
apt     -y     install handbrake libcurl4-openssl-dev software-properties-common dirmngr r-base libmagick++-dev cmake code
snap           install firefox
apt     -y     autoremove
echo    '
0 1 * * *      apt           -y          update
0 2 * * *      apt           -y          full-upgrade
0 3 * * *      apt           -y          autoremove
'       |      crontab
netstat        -plnt




# 新电脑安装软件 @ Ubuntu 24.04.2 LTS
