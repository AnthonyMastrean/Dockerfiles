FROM debian:stretch-slim

LABEL maintainer "Anthony Mastrean <anthony.mastrean@gmail.com>"

WORKDIR /root

RUN set -o pipefail \
    && apt-get update -y \
    && apt-get install -y --no-install-recommends \
        imagemagick \
        wget \
    && wget -q -O - http://www.fmwconcepts.com/imagemagick/script_list.txt \
        | egrep -o '^\w+' \
        | xargs -t -I"{}" wget -q -O "{}" "http://www.fmwconcepts.com/imagemagick/downloadcounter.php?scriptname={}&dirname={}" \
    && chmod +x * \
    && rm -fr /var/cache/apt/* /var/lib/apt/lists/*

CMD ["ls -1"]
