FROM ubuntu AS build

RUN apt-get update && apt-get install --yes \
        autoconf \
        checkinstall \
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
    && ./configure --disable-x11 --with-private-dirs \
    && make \
    && checkinstall -D --default --install=no



FROM ubuntu

LABEL maintainer "Anthony Mastrean <anthony.mastrean@gmail.com>"

ENV HOME /home/angband
ENV LANG en_US.UTF-8
ENV TERM xterm-256color

RUN apt-get update && apt-get install --yes \
        locales \
    && rm -rf /var/lib/apt/lists/* \
    && locale-gen $LANG \
    && update-locale LANG=$LANG LANGUAGE=$LANG LC_ALL=$LANG

COPY --from=build /usr/local/src/angband-4.1.2/angband_4.1.2-1_amd64.deb /tmp

RUN dpkg --install /tmp/angband_4.1.2-1_amd64.deb \
    && rm -f /tmp/angband_4.1.2-1_amd64.deb

RUN useradd --create-home angband

USER angband

WORKDIR $HOME

ENTRYPOINT ["/usr/local/games/angband"]
