#  mount       .host:/  /mnt/  --types fuse.vmhgfs-fuse  --options allow_other
sed            -i        "/vmhgfs/d"       /etc/fstab
echo           '.host:/  /mnt/  fuse.vmhgfs-fuse  allow_other  0  0'  >>  /etc/fstab




# 开启VMware虚拟机共享文件夹 @ Ubuntu 24.04.2 LTS
