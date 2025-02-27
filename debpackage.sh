apt    -y   install  curl
curl        --socks5-hostname    127.0.0.1:8000           \
            --location           --continue-at -          \
            --remote-name        https://github.com/2dust/v2rayN/releases/download/7.9.3/v2rayN-linux-64.deb      \
            --remote-name        https://github.com/balena-io/etcher/releases/download/v1.19.25/balena-etcher_1.19.25_amd64.deb
curl        --location           --continue-at -          \
            --remote-name        https://dldir1v6.qq.com/weixin/Universal/Linux/WeChatLinux_x86_64.deb
dpkg   -i   v2rayN-linux-64.deb
apt    -y   install             ./WeChatLinux_x86_64.deb    ./balena-etcher_1.19.25_amd64.deb




# deb包安装 @ Ubuntu 24.04.2 LTS
