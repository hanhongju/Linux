apt     -y    install brasero rhythmbox vlc net-tools
echo    '
0 1 * * *     apt           -y          update
0 2 * * *     apt           -y          full-upgrade
0 3 * * *     apt           -y          autoremove
'       |     crontab
netstat       -plnt




# Ubuntu 新电脑安装软件
