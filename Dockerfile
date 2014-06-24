FROM ubuntu:14.04
MAINTAINER Simon Thulbourn <simon+github@thulbourn.com>

RUN apt-get -y update
RUN apt-get -y install build-essential
RUN apt-get -y install git curl openssh-server supervisor
RUN apt-get -y install libxml2-dev libxslt1-dev libyaml-dev libreadline6-dev libncurses5-dev libgdbm-dev openssl
RUN mkdir -p /app
RUN mkdir -p /app/tmp
RUN curl -o /app/tmp/ruby-install-0.3.4.tar.gz -L https://github.com/postmodern/ruby-install/archive/v0.3.4.tar.gz
RUN mkdir -p /app/build
RUN tar zxfv /app/tmp/ruby-install-0.3.4.tar.gz -C /app/tmp
RUN /app/tmp/ruby-install-0.3.4/bin/ruby-install ruby 2.1.2 -i /usr/local -- --disable-install-doc
RUN gem install bundler --no-ri --no-rdoc

RUN adduser rubyapp --home /app
RUN echo 'rubyapp:rubyapp' | chpasswd

EXPOSE 5000
