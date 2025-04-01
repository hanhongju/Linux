zypper modifyrepo --disable --all
echo   '
[nju-oss]
enabled=1
autorefresh=1
baseurl=https://mirror.nju.edu.cn/opensuse/tumbleweed/repo/oss/
gpgcheck=1
[nju-non-oss]
enabled=1
autorefresh=1
baseurl=https://mirror.nju.edu.cn/opensuse/tumbleweed/repo/non-oss/
type=rpm-md
gpgcheck=1
'   >    /etc/zypp/repos.d/nju.repo
zypper refresh
zypper -n install brasero rhythmbox smplayer libreoffice hashdeep gparted qbittorrent cmake krita gimp \
                  trojan R-base fontconfig-devel gcc gcc-c++ libxml2-devel libcurl-devel gcc-fortran libjpeg-devel libpng-devel
zypper -n update






# 新电脑安装软件 @ openSUSE Tumbleweed
# 参考文献：https://zhuanlan.zhihu.com/p/609450361
