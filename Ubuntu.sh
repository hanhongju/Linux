# 虚拟机不能复制命令手动安装 apt install open-vm-tools-desktop
echo   'Types: deb
URIs: https://mirrors.nju.edu.cn/ubuntu/
Suites: noble noble-updates noble-security noble-backports
Components: main restricted universe multiverse
Signed-By: /usr/share/keyrings/ubuntu-archive-keyring.gpg
'       >     /etc/apt/sources.list.d/ubuntu.sources
apt     update   &&   apt   -y   install   wget
wget    -c    https://packages.microsoft.com/keys/microsoft.asc                       -P     /etc/apt/trusted.gpg.d/
wget    -c    https://mirrors.nju.edu.cn/CRAN/bin/linux/ubuntu/marutter_pubkey.asc    -P     /etc/apt/trusted.gpg.d/
echo    'deb [arch=amd64,arm64,armhf] https://packages.microsoft.com/repos/code/      stable main'     >    /etc/apt/sources.list.d/vscode.list
# 官方源中的 r-base 版本较低，会造成错误
echo    'deb https://mirrors.nju.edu.cn/CRAN/bin/linux/ubuntu noble-cran40/'                           >    /etc/apt/sources.list.d/cran40.list
apt     update   &&   DEBIAN_FRONTEND=noninteractive   apt   -y   install   \
        wget curl brasero rhythmbox smplayer net-tools libreoffice libreoffice-l10n-zh-cn libreoffice-help-zh-cn \
        hashdeep p7zip-full firefox gparted usb-creator-gtk samba qbittorrent cifs-utils thunderbird code  \
        handbrake libcurl4-openssl-dev software-properties-common dirmngr r-base libmagick++-dev cmake calibre   \
        krita krita-l10n gimp trojan
dpkg        -a   --configure
ubuntu-drivers   autoinstall




site=alihk.hanhongju.com
echo '
{"run_type"    : "client"
,"local_addr"  : "127.0.0.1"
,"local_port"  : 4000
,"remote_addr" : "www.example.com"
,"remote_port" : 443
,"password"    : ["fengkuang"]
,"ssl"         : {"sni"  : "www.example.com"
                 ,"alpn" : ["http/1.1"]
                 }
}
'           >                                             /etc/trojan/config.json
sed         -i        "s/www.example.com/$site/g"         /etc/trojan/config.json
systemctl   enable    trojan
systemctl   restart   trojan
apt         update   &&   DEBIAN_FRONTEND=noninteractive   apt   -y   full-upgrade   &&   apt   -y   autoremove
echo   '
https://github.com/2dust/v2rayN/releases/download/7.9.3/v2rayN-linux-64.deb
https://github.com/balena-io/etcher/releases/download/v2.1.0/balena-etcher_2.1.0_amd64.deb
https://dldir1v6.qq.com/weixin/Universal/Linux/WeChatLinux_x86_64.deb
https://download1.rstudio.org/electron/jammy/amd64/rstudio-2024.12.1-563-amd64.deb
https://github.com/Eugeny/tabby/releases/download/v1.0.223/tabby-1.0.223-linux-x64.deb
https://www.softmaker.net/down/softmaker-freeoffice-2024_1224-01_amd64.deb
'       >      download.txt
xargs   --max-args 1        --max-procs 10        --arg-file download.txt        \
curl    --location          --continue-at -       --socks5-hostname 127.0.0.1:4000      --remote-name
DEBIAN_FRONTEND=noninteractive   apt   -y   install   \
        ./v2rayN-linux-64.deb   ./WeChatLinux_x86_64.deb   ./balena-etcher_2.1.0_amd64.deb  \
        ./rstudio-2024.12.1-563-amd64.deb   ./tabby-1.0.223-linux-x64.deb                   \
        ./softmaker-freeoffice-2024_1224-01_amd64.deb
netstat -plnt




# 新电脑安装软件 @ Ubuntu 24.04.2 LTS
# 源列表 https://mirror.nju.edu.cn/mirrorz-help/ubuntu/?mirror=NJU
