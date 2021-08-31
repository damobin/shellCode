#!/bin/bash
smbclient -L 192.168.1.110
sudo mkdir -p /mnt/Myshare
sudo mount -t cifs -o user=mo,password=123 //192.168.1.110/share /mnt/Myshare/

#restart samba
#sudo service smbd restart
