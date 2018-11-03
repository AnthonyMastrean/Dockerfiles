[![Docker Build Status](https://img.shields.io/docker/build/anthonymastrean/fredsimagemagick.svg)](https://hub.docker.com/r/anthonymastrean/fredsimagemagick/builds/) [![Website](https://img.shields.io/badge/website-fmwconcepts.com-blue.svg)](http://www.fmwconcepts.com/imagemagick/index.php)

# Fred's ImageMagick Scripts

## Run

For a list of scripts

```
$ docker run --rm -it \
    --name fredsimagemagick \
    anthonymastrean\fredsimagemagick
```

To run a specific script

```
$ docker run --rm -it \
    --name fredsimagemagick \
    anthonymastrean\fredsimagemagick [./script] [opts]
```
