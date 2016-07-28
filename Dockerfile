FROM ubuntu:14.04
MAINTAINER Wind Hong <hzywind@gmail.com>

RUN apt-get update \
&& apt-get install -y python-pip wget \
&& pip install shadowsocks==2.8.2 \
&& mkdir /etc/ss

RUN wget -q -O - https://github.com/jedisct1/libsodium/releases/download/1.0.10/libsodium-1.0.10.tar.gz | ar -xzf - -C /etc/ss

ENTRYPOINT ["/usr/local/bin/ssserver"]






