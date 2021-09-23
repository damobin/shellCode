#!/bin/bash -e
export DISPLAY=:10  #在10号屏幕打开程序
Xvnc --SecurityTypes=None $DISPLAY & 
sleep 1s
openbox-session &  #打开敞口管理器
xsetroot -solid gray #把背景弄成灰色
pypanel &
aterm & #启动终端
startxfce4 #开启xfce桌面
