dnf-3 config-manager --set-disabled '*'
echo  '
[baseos]
name=CentOS Stream $releasever - BaseOS
baseurl=https://mirror.nju.edu.cn/centos-stream/$releasever-stream/BaseOS/$basearch/os
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-centosofficial
gpgcheck=1
repo_gpgcheck=0
metadata_expire=6h
countme=1
enabled=1
[appstream]
name=CentOS Stream $releasever - AppStream
baseurl=https://mirror.nju.edu.cn/centos-stream/$releasever-stream/AppStream/$basearch/os
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-centosofficial
gpgcheck=1
repo_gpgcheck=0
metadata_expire=6h
countme=1
enabled=1
[crb]
name=CentOS Stream $releasever - CRB
baseurl=https://mirror.nju.edu.cn/centos-stream/$releasever-stream/CRB/$basearch/os
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-centosofficial
gpgcheck=1
repo_gpgcheck=0
metadata_expire=6h
countme=1
enabled=1
'     >    /etc/yum.repos.d/centos.repo
echo  '
[extras-common]
name=CentOS Stream $releasever - Extras packages
baseurl=https://mirror.nju.edu.cn/centos-stream/SIGs/$releasever-stream/extras/$basearch/extras-common
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-SIG-Extras-SHA512
gpgcheck=1
repo_gpgcheck=0
metadata_expire=6h
countme=1
enabled=1
'     >    /etc/yum.repos.d/centos-addons.repo
dnf check-update
dnf -y install brasero rhythmbox smplayer net-tools libreoffice hashdeep gparted samba qbittorrent cifs-utils thunderbird \
               dirmngr cmake calibre krita gimp trojan R libxml2-devel libcurl-devel fontconfig-devel libjpeg-devel
