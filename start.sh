#!/bin/sh
iptables -t nat -N SHADOWSOCKS

# add ips as you like
iptables -t nat -A SHADOWSOCKS -p tcp -d 173.194.0.0/16 -j REDIRECT --to-ports 1080
iptables -t nat -A SHADOWSOCKS -p tcp -d 203.208.32.0/19 -j REDIRECT --to-ports 1080
iptables -t nat -A SHADOWSOCKS -p tcp -d 216.239.32.0/19 -j REDIRECT --to-ports 1080
iptables -t nat -A SHADOWSOCKS -p tcp -d 74.125.0.0/16 -j REDIRECT --to-ports 1080
iptables -t nat -A SHADOWSOCKS -p tcp -d 64.233.160.0/19 -j REDIRECT --to-ports 1080
iptables -t nat -A SHADOWSOCKS -p tcp -d 216.58.192.0/19 -j REDIRECT --to-ports 1080
iptables -t nat -A SHADOWSOCKS -p tcp -d 104.27.152.130 -j REDIRECT --to-ports 1080
iptables -t nat -A SHADOWSOCKS -p tcp -d 104.27.153.130 -j REDIRECT --to-ports 1080
iptables -t nat -A SHADOWSOCKS -p tcp -d 216.58.221.174 -j REDIRECT --to-ports 1080
iptables -t nat -A SHADOWSOCKS -p tcp -d 192.30.252.0/22 -j REDIRECT --to-ports 1080
iptables -t nat -A SHADOWSOCKS -p tcp -d 130.89.148.14 -j REDIRECT --to-ports 1080
iptables -t nat -A SHADOWSOCKS -p tcp -d 149.20.20.22 -j REDIRECT --to-ports 1080
iptables -t nat -A SHADOWSOCKS -p tcp -d 5.153.231.4 -j REDIRECT --to-ports 1080
iptables -t nat -A SHADOWSOCKS -p tcp -d 128.31.0.62 -j REDIRECT --to-ports 1080
  
iptables -t nat -A SHADOWSOCKS -p tcp -j RETURN
iptables -t nat -A OUTPUT -p tcp -j SHADOWSOCKS

# start ss-redir
ss-redir -v -c /etc/ss.conf