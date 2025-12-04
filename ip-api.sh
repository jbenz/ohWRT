#!/bin/ash
curl -s http://ip-api.com | grep query > .tmpip1
awk -F':' '{print $2}' .tmpip1 > .tmpip2
awk -F'"' '{print $2}' .tmpip2 > wan-ip.txt
#cat wan-ip.txt
ip=$(cat wan-ip.txt)
echo $ip
nslookup "$ip" 2>/dev/null | sed -nE 's/.*[Nn]ame[[:space:]]*=?[[:space:]]*//p' | sed -E 's/\.$//' | awk 'NR==1{print; exit}' > hostname.txt
hostname=$(cat hostname.txt)
echo $hostname
