FROM ubuntu

ENV SNIB false

RUN apt-get -y update \
    && apt-get -y --no-install-recommends install \
        android-tools-fastboot \
        curl \
        sunxi-tools \
        tar \
        u-boot-tools

WORKDIR /root

RUN curl -ksJLOS https://archive.org/download/NextThingCo.GitArchive/CHIP-tools.tar.bz2 \
    && tar xjf CHIP-tools.tar.bz2 \
    && rm -rf CHIP-tools.tar.bz2

WORKDIR /root/CHIP-tools

ENTRYPOINT ["./chip-update-firmware.sh"]
CMD ["-h"]
