FROM ubuntu
MAINTAINER crytpozona
RUN /bin/bash -c 'apt-get -y update'
RUN /bin/bash -c 'apt-get -y install build-essential autotools-dev autoconf libcurl3 libcurl4-gnutls-dev git fail2ban'
RUN /bin/bash -c 'git clone https://github.com/wolf9466/cpuminer-multi'
RUN /bin/bash -c 'cd cpuminer-multi'
RUN /bin/bash -c './autogen.sh'
RUN /bin/bash -c 'CFLAGS="-march=native" ./configure'
RUN /bin/bash -c 'make'
RUN /bin/bash -c 'make install'
CMD sudo minerd -a cryptonight -o stratum+tcp://bytecoin.uk:3333 -u WALLETID -p x

