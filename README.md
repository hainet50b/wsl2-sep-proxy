# WSL2 Symantec Endpoint Protection Proxy

This HTTP/HTTPS/FTP proxy allows WSL2 to communicate externally.  
For example you can take advantage when you are using Symantec Endpoint Protection.

First, set up this proxy please.
```
docker run -d --name wsl2-sep-proxy -p 9999:80 hainet50b/wsl2-sep-proxy
```

Then, set a `.bash_profile` as follows.
```
export http_proxy=http://$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):9999
export https_proxy=${http_proxy}
```

If you use `apt`, set a proxy setting as follows just once.
```
git clone https://github.com/hainet50b/wsl2-sep-proxy.git
cd wsl2-sep-proxy
sudo ./create-proxy-conf-4-apt.sh $http_proxy $https_proxy
```

If you use `yum`, set a proxy setting as follows just once.
```
git clone https://github.com/hainet50b/wsl2-sep-proxy.git
cd wsl2-sep-proxy
sudo ./create-proxy-conf-4-yum.sh $http_proxy
```

That's all! Let's enjoy WSL2.
