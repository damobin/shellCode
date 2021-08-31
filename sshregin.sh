#!/usr/bin/expect
set user root
set host 104.225.153.196
set port 26236
set pass "hwESMcR9Y6hM"
spawn ssh -p $port $user@$host
expect "*password:"
send "hwESMcR9Y6hM\r"
expect "*#"
interact
