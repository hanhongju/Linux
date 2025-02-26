apt    -y   install  curl
curl        --socks5-hostname    127.0.0.1:8000           \
            --remote-name  --location  --continue-at -    \
            https://github.com/2dust/v2rayN/releases/download/7.9.3/v2rayN-linux-64.deb
dpkg   -i   v2rayN-linux-64.deb


curl        --remote-name   --location  --continue-at -   \
            https://dldir1v6.qq.com/weixin/Universal/Linux/WeChatLinux_x86_64.deb
dpkg   -i   WeChatLinux_x86_64.deb




# deb包安装 @ Ubuntu 24.04.2 LTS
