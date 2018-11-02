FROM debian:stretch-slim

LABEL maintainer "Anthony Mastrean <anthony.mastrean@gmail.com>"

WORKDIR /root

RUN apt-get update -y \
    && apt-get install -y --no-install-recommends \
        imagemagick \
        wget \
    && wget http://www.fmwconcepts.com/imagemagick/script_list.txt \
    && \
    && rm -fr /var/cache/apt/* /var/lib/apt/lists/*
