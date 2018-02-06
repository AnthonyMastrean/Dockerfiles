[![Docker Build Status](https://img.shields.io/docker/build/anthonymastrean/crawl.svg)](https://hub.docker.com/r/anthonymastrean/crawl/builds/)

# Dungeon Crawl Stone Soup

http://crawl.develz.org/

## Installing

http://crawl.develz.org/download.htm#linux

## Run

```
$ docker run -it --rm \
    --name crawl \
    -v $HOME/.crawl:/home/crawl/.crawl
    anthonymastrean/crawl
```
