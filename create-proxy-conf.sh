echo "Acquire::http:Proxy \"$1\";" > /etc/apt/apt.conf.d/proxy.conf;
echo "Acquire::https:Proxy \"$2\";" >> /etc/apt/apt.conf.d/proxy.conf;