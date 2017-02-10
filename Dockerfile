
FROM ubuntu:14.04

MAINTAINER Gabor Raz

RUN apt-get update
RUN apt-get update >/dev/null
RUN sudo apt-get install -y git
RUN sudo apt-get install -y curl
RUN sudo apt-get install -y build-essential
RUN sudo apt-get install -y python
RUN sudo apt-get install -y make
RUN sudo apt-get install -y g++
RUN sudo apt-get install -y libfontconfig
RUN apt-get install -y locales >/dev/null
RUN echo "en_US UTF-8" > /etc/locale.gen
RUN locale-gen en_US.UTF-8
RUN export LANG=en_US.UTF-8
RUN export LANGUAGE=en_US:en
RUN export LC_ALL=en_US.UTF-8
RUN curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
RUN sudo apt-get install -y nodejs
RUN sudo npm install node-gyp -g
RUN curl https://install.meteor.com/ | sh
RUN apt-get install -y openssh-client
RUN echo 'PATH="/usr/local/node/bin:${PATH}"' >> /etc/bash.bashrc
