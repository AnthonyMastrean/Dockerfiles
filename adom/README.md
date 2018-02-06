[![Docker Build Status](https://img.shields.io/docker/build/anthonymastrean/adom.svg)](https://hub.docker.com/r/anthonymastrean/adom/builds/)

# Ancient Domains of Mystery (ADOM)

http://www.adom.de/

## Run

```
$ docker run -it --rm \
    --name adom \
    -v $HOME/.adom:/home/adom/.adom.data \
    anthonymastrean/adom
```
