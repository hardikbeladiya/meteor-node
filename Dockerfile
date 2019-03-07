
FROM ubuntu:14.04

MAINTAINER Gabor Raz

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
    && apt-get update >/dev/null \
    && sudo apt-get install -y git \
    && sudo apt-get install -y unzip \
    && sudo apt-get install -y curl \
    && sudo apt-get install -y build-essential \
    && apt-get install -y apt-transport-https ca-certificates gnupg2 software-properties-common \
    && curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash - \
    && sudo apt-get install -y nodejs \
    && sudo npm install node-gyp -g \
    && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list \
    && curl https://install.meteor.com/ | sh \
    && apt-get install -y openssh-client \
    && echo 'PATH="/usr/local/node/bin:${PATH}"' >> /etc/bash.bashrc \
#Install java
    #&& echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee /etc/apt/sources.list.d/webupd8team-java.list \
    #&& echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee -a /etc/apt/sources.list.d/webupd8team-java.list \
    #&& apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886 \
    #&& apt-get update \
# Enable silent install
    #&& echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections \
    #&& echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections \
    #&& apt-get install -y oracle-java8-installer \
    #&& apt-get install oracle-java8-set-default \
# Install Firefox 45.4.0 (https://github.com/SeleniumHQ/selenium/blob/master/java/CHANGELOG#L33)
#   && curl -o /var/tmp/firefox-45.4.0esr.tar.bz2 https://ftp.mozilla.org/pub/firefox/releases/45.4.0esr/linux-x86_64/en-US/firefox-45.4.0esr.tar.bz2 \
#   && tar xvfj /var/tmp/firefox-45.4.0esr.tar.bz2 \
#   && ln -s /firefox/firefox-bin /usr/bin/firefox
# Install Docker
#    && curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - \
#    && add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" \
#    && apt-get update \
#    && apt-get -y install docker-ce \
#    && service docker start \



