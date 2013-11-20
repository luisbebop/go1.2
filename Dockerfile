FROM ubuntu

MAINTAINER luisbebop <luisbebop@gmail.com>

RUN sed 's/main$/main universe/' -i /etc/apt/sources.list
RUN apt-get -qq update
RUN apt-get install -y wget build-essential
RUN apt-get install -y git-core mercurial bzr

RUN wget 'http://go.googlecode.com/files/go1.2rc5.linux-amd64.tar.gz'
RUN tar -C / -xzf go1.2rc5.linux-amd64.tar.gz
RUN rm go1.2rc5.linux-amd64.tar.gz

ENV GOROOT /go
ENV GOPATH /usr/local/go
ENV PATH $PATH:$GOPATH/bin:$GOROOT/bin