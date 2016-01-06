# $ docker run -it adom
#
FROM ubuntu
MAINTAINER Anthony Mastrean <anthony.mastrean@gmail.com>

RUN apt-get update -y && apt-get install wget -y
RUN wget --output-document=- http://www.ancardia.com/download/adom_linux_ubuntu_64_r60_pub.tar.gz | tar --directory=/usr/local --extract --gzip --verbose

ENV TERM=xterm-256color

CMD /usr/local/adom/adom
