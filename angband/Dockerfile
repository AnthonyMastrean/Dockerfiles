FROM ubuntu AS build

ENV HOME /home/angband

RUN apt-get update && apt-get install --yes \
        autoconf \
        curl \
        gcc \
        libc6-dev \
        libncurses5-dev \
        libncursesw5-dev \
        libsdl-image1.2-dev \
        libsdl-mixer1.2-dev \
        libsdl-ttf2.0-dev \
        libsdl1.2-dev \
        libx11-dev \
        tar \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/local/src

RUN curl --silent http://rephial.org/downloads/4.1/angband-4.1.2.tar.gz \
    | tar --extract --gzip

WORKDIR /usr/local/src/angband-4.1.2

RUN ./autogen.sh \
    && ./configure --disable-x11 --prefix=$HOME \
    && make \
    && make install



FROM ubuntu

LABEL maintainer "Anthony Mastrean <anthony.mastrean@gmail.com>"

ENV HOME /home/angband
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV TERM xterm-256color

RUN apt-get update && apt-get install --yes \
        locales \
    && rm -rf /var/lib/apt/lists/* \
    && locale-gen $LANG \
    && update-locale LANG=$LANG LANGUAGE=$LANG LC_ALL=$LANG

RUN useradd --create-home angband

USER angband

WORKDIR $HOME

COPY --chown=angband:angband --from=build $HOME $HOME/

ENTRYPOINT ["./games/angband"]
