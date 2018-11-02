FROM debian:stretch-slim

LABEL maintainer "Anthony Mastrean <anthony.mastrean@gmail.com>"

WORKDIR /root

RUN apt-get update -y \
    && apt-get install -y --no-install-recommends \
        imagemagick \
        wget \
    && wget http://www.fmwconcepts.com/imagemagick/script_list.txt \
    && egrep -o '^\w+' script_list.txt > script_names.txt \
    && xargs -a script_names.txt -I"{}" -t wget -O "{}" "http://www.fmwconcepts.com/imagemagick/downloadcounter.php?scriptname={}&dirname={}" \; \
    && chmod +x * \
    && rm -fr *.txt /var/cache/apt/* /var/lib/apt/lists/*
