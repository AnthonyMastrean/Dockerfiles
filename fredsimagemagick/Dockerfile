FROM debian:stretch-slim

LABEL maintainer "Anthony Mastrean <anthony.mastrean@gmail.com>"

WORKDIR /root

RUN set -o pipefail \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        imagemagick \
        wget \
    && wget -q -O - http://www.fmwconcepts.com/imagemagick/script_list.txt \
        | egrep -o '^\w+' \
        | xargs -t -I"{}" wget -q -O "{}" "http://www.fmwconcepts.com/imagemagick/downloadcounter.php?scriptname={}&dirname={}" \
    && chmod +x * \
    && savedPackages="imagemagick" \
    && apt-mark auto '.*' > /dev/null \
    && apt-mark manual $savedPackages \
    && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false \
    && rm -fr /var/cache/apt/* /var/lib/apt/lists/*

CMD ["ls -1"]
