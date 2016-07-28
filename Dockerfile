FROM ubuntu:14.04
MAINTAINER Wind Hong <hzywind@gmail.com>

RUN apt-get update \
&& apt-get install -y python-pip wget \
&& pip install shadowsocks==2.8.2 \
&& mkdir /etc/ss

RUN wget -q -O - https://github.com/jedisct1/libsodium/releases/download/1.0.10/libsodium-1.0.10.tar.gz | tar -xzf - -C /etc/ss \
&& cd /etc/ss \
&& ./configure \
&& make && make install \
&& ./ldconfig

ENTRYPOINT ["/usr/local/bin/ssserver"]






