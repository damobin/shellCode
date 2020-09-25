smbclient -L 192.168.1.8 -U 387655860@qq.com%qq387655860 
sudo mount  -t cifs //192.168.1.8/packge/ /mnt/sharepack -o user=387655860@qq.com,uid=1000,gid=1000,dir_mode=0777,file_mode=0777
sudo mount  -t cifs //192.168.1.8/code/ /mnt/sharecode -o user=387655860@qq.com,uid=1000,gid=1000,dir_mode=0777,file_mode=0777
