# docker container run --interactive --rm --tty \
#     --volume $HOME/.adom:/home/adom/.adom.data \
#     --name adom \
#     anthonymastrean/adom
#

FROM ubuntu

LABEL maintainer "Anthony Mastrean <anthony.mastrean@gmail.com>"

ENV HOME /home/adom
ENV TERM xterm-256color

RUN apt-get update && apt-get install --yes \
        curl \
    && rm -rf /var/lib/apt/lists/*

RUN useradd --create-home adom

USER adom

WORKDIR $HOME

RUN curl --silent http://www.ancardia.com/download/adom_linux_ubuntu_64_3.0.6.tar.gz \
    | tar --extract --gzip --strip-components 1

ENTRYPOINT ./adom
