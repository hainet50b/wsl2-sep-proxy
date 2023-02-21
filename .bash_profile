export http_proxy=http://$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):9999
export https_proxy=${http_proxy}
