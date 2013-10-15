# Ghost Dockerfile
#
# VERSION               0.2

FROM ubuntu:latest

MAINTAINER https://github.com/Jabbslad/ghost

RUN echo "deb http://archive.ubuntu.com/ubuntu precise universe" >> /etc/apt/sources.list

RUN apt-get update
RUN apt-get install -y python-software-properties python g++ make
RUN add-apt-repository ppa:chris-lea/node.js
RUN apt-get update
RUN apt-get install -y nodejs
RUN apt-get install -y unzip
RUN apt-get install -y wget

ADD config.js /src/

RUN cd /src ; wget -O ghost.zip https://en.ghost.org/zip/ghost-0.3.2.zip
RUN cd /src ; ls ; unzip ghost.zip ; npm install --production

ADD themes/ /src/content/themes/

VOLUME ["/src/content/data", "/src/content/images"]

EXPOSE 2368

CMD ["npm", "start", "/src", "--production"]