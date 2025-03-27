echo    '
Server = https://mirrors.ustc.edu.cn/manjaro/stable/$repo/$arch
Server = https://mirrors.jlu.edu.cn/manjaro/stable/$repo/$arch
Server = https://mirrors.pku.edu.cn/manjaro/stable/$repo/$arch
'        >    /etc/pacman.d/mirrorlist
pacman  -Syy
pacman  -Syu libcurl
pacman  -S libcurl4

pacman-mirrors -c China -m rank

pacman-mirrors -c China







# 镜像源列表 https://archlinux.org/download/
