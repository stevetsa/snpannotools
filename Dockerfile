# This is a comment
# Interactive mode Docker mounting current directory
# docker pull teamcgc/snpeff:2016 
# docker run -it -v `pwd`:`pwd` teamcgc/snpeff:2016

FROM ubuntu:latest
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
MAINTAINER Steve Tsang <mylagimail2004@yahoo.com>
RUN apt-get update

RUN apt-get install --yes \
 build-essential \
 apt-utils \
 default-jre \
 default-jdk \
 wget \ 
 unzip

# snpEff and SnpSift.jar in /snpEff
# Get latest source from releases
RUN wget http://sourceforge.net/projects/snpeff/files/snpEff_latest_core.zip
RUN unzip snpEff_latest_core.zip

# Get and install vcfanno
# PATH to vcfanno executable set

RUN wget https://github.com/brentp/vcfanno/releases/download/v0.1.0/vcfanno_0.1.0_linux_amd64.tar.gz
RUN tar xvzf vcfanno_0.1.0_linux_amd64.tar.gz
ENV PATH /vcfanno_0.1.0_linux_amd64:$PATH
