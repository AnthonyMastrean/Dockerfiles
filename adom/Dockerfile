# $ docker run -it -v $HOME/.adom:/home/user/.adom --name adom --read-only

FROM ubuntu
MAINTAINER Anthony Mastrean <anthony.mastrean@gmail.com>

ENV HOME /home/user
# ENV TERM xterm-256color

RUN apt-get update -y && apt-get install wget -y
RUN wget --output-document=- http://www.ancardia.com/download/adom_linux_ubuntu_64_r60_pub.tar.gz | tar --directory=/usr/local --extract --gzip --verbose
RUN useradd --create-home --home-dir $HOME user && chown -R user:user $HOME

USER user

CMD /usr/local/adom/adom
