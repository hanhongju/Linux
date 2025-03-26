echo    'Server = https://mirrors.nju.edu.cn/manjaro/stable/$repo/$arch'        >    /etc/pacman.d/mirrorlist
pacman  --sync -yy
pacman  --sync --noconfirm curl












# 镜像源列表 https://archlinux.org/download/
