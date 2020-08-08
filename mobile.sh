#!/usr/bin/expect
 
set timeout 30
 
spawn ssh -l nvidia 192.168.1.4 -p 8022
#expect "password:" # 捕获到密码
#send "test\r" # 输入密码并回车
expect {
"*yes/no*" {send "yes\r"; exp_continue}
"password:" {send "123\r"}
}
 
# 允许用户进行交互
interact
