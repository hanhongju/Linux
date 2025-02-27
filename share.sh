mount -t fuse.vmhgfs-fuse .host:/ /mnt/ -o allow_other

apt -y install cifs-utils
mount.cifs -o user=test,password=123 //192.168.1.100/gostreet /mnt

# Vmware 挂载共享文件夹
