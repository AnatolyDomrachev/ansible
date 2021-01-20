iptables -A INPUT -s 192.168.218.128/32 -p tcp  --match multiport --dports 80,443,5432,27017,22 -j ACCEPT
iptables -A OUTPUT -d 192.168.218.128/32 -p tcp  --match multiport --sports 80,443,5432,27017,22 -j ACCEPT

iptables -A INPUT -s 10.211.0.1/32 -p tcp  --match multiport --dports 80,443,5432,27017,22 -j ACCEPT
iptables -A OUTPUT -d 10.211.0.1/32 -p tcp  --match multiport --sports 80,443,5432,27017,22 -j ACCEPT

iptables -P INPUT DROP
iptables -P OUTPUT DROP
iptables -P FORWARD DROP
