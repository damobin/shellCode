#!/usr/bin/expect

set host [lindex $argv 0]
set name [lindex $argv 1]
set psd [lindex $argv 2]

set timeout 30
set user u0_a201
set port 8022
set password 123
set IP [lindex $argv 0]
spawn ssh -l nvidia $IP -p $port
expect {
"*yes/no*" {send "yes\r"; exp_continue}
"*password:" {send "$password\r"}
}
 
# 允许用户进行交互
interact
