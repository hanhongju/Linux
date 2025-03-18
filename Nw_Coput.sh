echo   'Types: deb
URIs: http://mirrors.ustc.edu.cn/ubuntu/ http://mirrors.aliyun.com/ubuntu/ http://mirrors.163.com/ubuntu/ http://mirrors.tuna.tsinghua.edu.cn/ubuntu/
Suites: noble noble-updates noble-security
Components: main restricted universe multiverse
Signed-By: /usr/share/keyrings/ubuntu-archive-keyring.gpg
'       >     /etc/apt/sources.list.d/ubuntu.sources
echo    '
https://mirrors.ustc.edu.cn/CRAN/bin/linux/ubuntu/marutter_pubkey.asc
https://packages.microsoft.com/keys/microsoft.asc
'       >      trustedkey.txt
xargs   --max-args 1        --max-procs 10        --arg-file trustedkey.txt      \
curl    --location          --continue-at -       --socks5-hostname 127.0.0.1:5000      --output-dir /etc/apt/trusted.gpg.d/       --remote-name



# Comprehensive R Archive Network mirror sources
echo    'deb https://mirrors.ustc.edu.cn/CRAN/bin/linux/ubuntu noble-cran40/'                     >    /etc/apt/sources.list.d/cran40.list
echo    'deb [arch=amd64,arm64,armhf] https://packages.microsoft.com/repos/code/ stable main'     >    /etc/apt/sources.list.d/vscode.list
apt     update
dpkg    -a     --configure
DEBIAN_FRONTEND=noninteractive   apt     -y     install   \
        wget curl brasero rhythmbox smplayer net-tools libreoffice libreoffice-l10n-zh-cn libreoffice-help-zh-cn \
        hashdeep p7zip-full firefox gparted usb-creator-gtk samba qbittorrent cifs-utils steam thunderbird code  \
        handbrake libcurl4-openssl-dev software-properties-common dirmngr r-base libmagick++-dev cmake calibre   \
        krita krita-l10n gimp
apt     -y     autoremove
ubuntu-drivers autoinstall
echo    '
0 1 * * *      apt           -y          update
0 2 * * *      apt           -y          full-upgrade
0 3 * * *      apt           -y          autoremove
'       |      crontab
netstat        -plnt




# 新电脑安装软件 @ Ubuntu 24.04.2 LTS
