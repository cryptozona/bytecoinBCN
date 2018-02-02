FROM ubuntu
MAINTAINER crytpozona
RUN /bin/bash -c 'apt-get -y update && apt-get -y install build-essential autotools-dev autoconf libcurl3 libcurl4-gnutls-dev git && git clone https://github.com/wolf9466/cpuminer-multi && cd cpuminer-multi && ./autogen.sh && CFLAGS="-march=native" ./configure && make && make install && minerd -a cryptonight -o stratum+tcp://pool.bytecoin.party:3333 -u WALLETID -p x'

