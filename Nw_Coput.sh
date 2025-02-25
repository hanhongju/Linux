
echo '
Types: deb
URIs: https://mirrors.tuna.tsinghua.edu.cn/ubuntu/
Suites: noble noble-updates noble-security
Components: main restricted universe multiverse
Signed-By: /usr/share/keyrings/ubuntu-archive-keyring.gpg
' > /etc/apt/sources.list.d/ubuntu.sources
apt update

apt     -y    install brasero rhythmbox vlc net-tools libreoffice
echo    '
0 1 * * *     apt           -y          update
0 2 * * *     apt           -y          full-upgrade
0 3 * * *     apt           -y          autoremove
'       |     crontab
crontab       -l




# Ubuntu 新电脑安装软件
