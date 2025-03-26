echo   'Types: deb
URIs: http://mirrors.nju.edu.cn/ubuntu/
Suites: noble noble-updates noble-security
Components: main restricted universe multiverse
Signed-By: /usr/share/keyrings/ubuntu-archive-keyring.gpg
'       >     /etc/apt/sources.list.d/ubuntu.sources
apt     update   &&   apt   -y   install   curl
# Comprehensive R Archive Network mirror sources
echo    '
https://mirrors.nju.edu.cn/CRAN/bin/linux/ubuntu/marutter_pubkey.asc
https://packages.microsoft.com/keys/microsoft.asc
'       >      trustedkey.txt
xargs   --max-args 1        --max-procs 10        --arg-file trustedkey.txt      \
curl    --location          --continue-at -       --output-dir /etc/apt/trusted.gpg.d/       --remote-name
echo    'deb https://mirrors.nju.edu.cn/CRAN/bin/linux/ubuntu noble-cran40/'                      >    /etc/apt/sources.list.d/cran40.list
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
netstat        -plnt




# 新电脑安装软件 @ Ubuntu 24.04.2 LTS
# 镜像源列表 https://archlinux.org/download/
