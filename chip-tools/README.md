[![Docker Build Status](https://img.shields.io/docker/build/anthonymastrean/chip-tools.svg)](https://hub.docker.com/r/anthonymastrean/chip-tools/builds/) [![CHIP docs](https://img.shields.io/badge/docs-getchip.com-blue.svg)](https://web.archive.org/web/20180517005610/https://docs.getchip.com/chip.html#flash-chip-firmware)

# C.H.I.P. Tools

The online source for images and binaries is shut down. You should download some flavor(s) from this [archive](https://archive.org/details/opensource.nextthing.co). Extract the archives to some folder. You'll need to use a Docker volume and the "local" (`-L`) option.

## Run

```
$ docker run --rm -it \
    -v ~/chip:/img
    --name chip-tools \
    --privileged \
    anthonymastrean/chip-tools \
    -L /img/stable-gui-b149
```
