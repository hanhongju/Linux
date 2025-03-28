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
dnf check-update
dnf install -y brasero rhythmbox smplayer net-tools libreoffice hashdeep gparted samba qbittorrent cifs-utils thunderbird \
               dirmngr cmake calibre krita gimp trojan




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
dnf    upgrade -y
echo   '
https://vscode.download.prss.microsoft.com/dbazure/download/stable/ddc367ed5c8936efe395cffeec279b04ffd7db78/code-1.98.2-1741788968.el8.x86_64.rpm
'       >      download.txt
xargs   --max-args 1        --max-procs 10        --arg-file download.txt        \
curl    --location          --continue-at -       --socks5-hostname 127.0.0.1:4000      --remote-name
dnf     install   -y     ./code-1.98.2-1741788968.el8.x86_64.rpm
netstat -plnt




# 新电脑安装软件 @ Fedora 41
