# WSL2 Symantec Endpoint Protection Proxy

This proxy allows WSL2 to communicate externally to the Internet.  
For example you can take advantage when you are using Symantec Endpoint Protection.

First, set up this proxy please.
```
docker run -d --name wsl2-sep-proxy -p 9999:9999 hainet50b/wsl2-sep-proxy
```

Then, set a .bash_profile as follows.
```
export http_proxy=http://$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):9999
export https_proxy=${http_proxy}
```

That's all! Let's enjoy WSL2.
