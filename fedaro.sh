echo '
[fedora]
name=Fedora $releasever - $basearch - Base
baseurl=http://mirrors.nju.edu.cn/pub/fedora/linux/releases/$releasever/Everything/$basearch/os/
enabled=1
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-fedora-$releasever-$basearch
'  >   /etc/yum.repos.d/fedora.repo

echo '
[updates]
name=Fedora $releasever - $basearch - Updates
baseurl=http://mirrors.nju.edu.cn/pub/fedora/linux/releases/$releasever/Everything/$basearch/os/
enabled=1
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-fedora-$releasever-$basearch
'  >   /etc/yum.repos.d/fedora-updates.repo


dnf clean all
dnf makecache
dnf upgrade
