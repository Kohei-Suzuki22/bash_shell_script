#!/bin/bash

#  /etc,/homeをアーカイブ&圧縮,
#  scp →　リモートマシンにファイルをコピー. 

tar cvzf 191028-etc.tar.gz /etc
tar cvzf 191028-home.tar.gz /home
scp 191028-etc.tar.gz root@backup.local.example.com:~/backup
scp 191028-home.tar.gz root@backup.local.example.com:~/backup


