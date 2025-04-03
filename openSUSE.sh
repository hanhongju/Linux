zypper modifyrepo --disable --all
echo   '
[nju-oss]
enabled=1
autorefresh=1
baseurl=https://mirror.sustech.edu.cn/opensuse/tumbleweed/repo/oss/
gpgcheck=1
[nju-non-oss]
enabled=1
autorefresh=1
baseurl=https://mirror.sustech.edu.cn/opensuse/tumbleweed/repo/non-oss/
type=rpm-md
gpgcheck=1
'   >    /etc/zypp/repos.d/sustech.repo
zypper refresh
zypper --non-interactive install brasero rhythmbox smplayer libreoffice hashdeep gparted qbittorrent cmake krita gimp trojan R-base  \
                                 gcc gcc-c++ gcc-fortran harfbuzz-devel fribidi-devel freetype-devel fontconfig-devel                \
                                 libxml2-devel libcurl-devel libjpeg-devel libpng-devel libtiff-devel net-tools




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
zypper      --non-interactive   update
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
zypper --non-interactive install  ./code-1.98.2-1741788968.el8.x86_64.rpm  ./tabby-1.0.223-linux-x64.rpm \
                                  ./WeChatLinux_x86_64.rpm ./softmaker-freeoffice-2024-1224.x86_64.rpm   \
                                  ./rstudio-2024.12.1-563-x86_64.rpm ./balena-etcher-2.1.0-1.x86_64.rpm
ss     --processes  --listening  --numeric  --tcp




# 新电脑安装软件 @ openSUSE Tumbleweed
# 参考文献 https://zhuanlan.zhihu.com/p/609450361
# 源列表 https://mirror.nju.edu.cn/opensuse/
