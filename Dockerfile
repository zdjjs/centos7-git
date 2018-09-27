FROM centos:centos7
ENV GIT_VERSION 2.19.0
RUN yum install -y gcc curl-devel expat-devel gettext-devel openssl-devel zlib-devel perl-ExtUtils-MakeMaker make wget \
&& wget https://mirrors.edge.kernel.org/pub/software/scm/git/git-${GIT_VERSION}.tar.gz \
&& tar zxvf git-${GIT_VERSION}.tar.gz \
&& cd ./git-${GIT_VERSION} \
&& ./configure --prefix=/git \
&& make all \
&& make install

