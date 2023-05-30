target=/etc/yum.conf

if [ ! -e $target ]; then
  touch $target
fi

echo "proxy=$1" >> /etc/yum.conf
