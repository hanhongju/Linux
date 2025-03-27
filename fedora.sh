echo '
[fedora]
name=Fedora $releasever - $basearch
baseurl=https://mirrors.nju.edu.cn/fedora/releases/$releasever/Everything/$basearch/os/
enabled=1
countme=1
metadata_expire=7d
repo_gpgcheck=0
type=rpm
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-fedora-$releasever-$basearch
skip_if_unavailable=False
'  >   /etc/yum.repos.d/fedora.repo
echo '
[updates]
name=Fedora $releasever - $basearch - Updates
baseurl=https://mirrors.nju.edu.cn/fedora/updates/$releasever/Everything/$basearch/
enabled=1
countme=1
repo_gpgcheck=0
type=rpm
gpgcheck=1
metadata_expire=6h
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-fedora-$releasever-$basearch
skip_if_unavailable=False
'  >   /etc/yum.repos.d/fedora-updates.repo
dnf clean all
dnf makecache
dnf upgrade -y


























