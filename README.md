# WSL2 Symantec Endpoint Protection Proxy

This HTTP/HTTPS/FTP proxy allows WSL2 to communicate externally.  
For example you can take advantage when you are using Symantec Endpoint Protection.

First, set up this proxy please.
```
docker run -d --name wsl2-sep-proxy -p 9999:80 hainet50b/wsl2-sep-proxy
```

Then, set a `.bashrc` as follows.
```
proxy_server=http://$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):9999
echo "export http_proxy=${proxy_server}" >> ~/.bashrc
echo "export https_proxy=${proxy_server}" >> ~/.bashrc
```

If you use `apt`, set a proxy setting as follows just once.
```
touch /etc/apt/apt.conf.d/proxy.conf
echo "Acquire::http:Proxy \"$1\";" >> /etc/apt/apt.conf.d/proxy.conf
echo "Acquire::https:Proxy \"$2\";" >> /etc/apt/apt.conf.d/proxy.conf
```

If you use `yum`, set a proxy setting as follows just once.
```
touch /etc/yum.conf
echo "proxy=$1" >> /etc/yum.conf
```

That's all! Let's enjoy WSL2.
