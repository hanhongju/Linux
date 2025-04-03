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
zypper -n install brasero rhythmbox smplayer libreoffice hashdeep gparted qbittorrent cmake krita gimp trojan R-base  \
                  gcc gcc-c++ gcc-fortran harfbuzz-devel fribidi-devel freetype-devel fontconfig-devel                \
                  libxml2-devel libcurl-devel libjpeg-devel libpng-devel libtiff-devel net-tools-deprecated
zypper -n update




# 新电脑安装软件 @ openSUSE Tumbleweed
# 参考文献 https://zhuanlan.zhihu.com/p/609450361
# 源列表 https://mirror.nju.edu.cn/opensuse/
