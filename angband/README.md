[![Docker Build Status](https://img.shields.io/docker/build/anthonymastrean/angband.svg)](https://hub.docker.com/r/anthonymastrean/angband/builds/)

# Angband

http://rephial.org/

## Compiling

http://trac.rephial.org/wiki/Compiling

## Run

```
$ docker run -it --rm \
    --name angband \
    -v $HOME/.angband:/home/angband/.angband \
    anthonymastrean/angband
```
