apt    -y   update   &&   DEBIAN_FRONTEND=noninteractive   apt   -y   full-upgrade   &&   apt   -y   autoremove
apt    -y   install  curl
echo   '
https://github.com/2dust/v2rayN/releases/download/7.9.3/v2rayN-linux-64.deb
https://github.com/balena-io/etcher/releases/download/v2.1.0/balena-etcher_2.1.0_amd64.deb
https://dldir1v6.qq.com/weixin/Universal/Linux/WeChatLinux_x86_64.deb
https://download1.rstudio.org/electron/jammy/amd64/rstudio-2024.12.1-563-amd64.deb
https://github.com/Eugeny/tabby/releases/download/v1.0.223/tabby-1.0.223-linux-x64.deb
'       >      download.txt
xargs   --max-args 1        --max-procs 10        --arg-file download.txt        \
curl    --location          --continue-at -       --socks5-hostname 127.0.0.1:5000      --remote-name
DEBIAN_FRONTEND=noninteractive   apt   -y   install   \
        ./v2rayN-linux-64.deb   ./WeChatLinux_x86_64.deb   ./balena-etcher_2.1.0_amd64.deb   ./rstudio-2024.12.1-563-amd64.deb    ./tabby-1.0.223-linux-x64.deb




# deb包安装 @ Ubuntu 24.04.2 LTS
