FROM stackbrew/ubuntu:saucy
MAINTAINER Simon Thulbourn <simon+github@thulbourn.com>

RUN apt-get -y update
RUN apt-get -y install build-essential
RUN apt-get -y install git curl openssh-server supervisor
RUN apt-get -y install libxml2-dev libxslt1-dev libyaml-dev libreadline6-dev libncurses5-dev libgdbm-dev openssl
RUN mkdir -p /build
RUN curl -o /build/ruby-install-0.3.4.tar.gz -L https://github.com/postmodern/ruby-install/archive/v0.3.4.tar.gz
RUN tar zxfv /build/ruby-install-0.3.4.tar.gz -C /build
RUN /build/ruby-install-0.3.4/bin/ruby-install ruby 2.0.0 -i /usr/local -- --disable-install-doc
RUN gem install bundler --no-ri --no-rdoc

RUN adduser rubyapp --home /build/app
RUN echo 'rubyapp:rubyapp' | chpasswd

CMD ["/bin/bash"]
