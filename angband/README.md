# Angband

http://rephial.org/

## Compiling

There's a lot going on to compile for Linux.

http://trac.rephial.org/wiki/Compiling

## Run

```
$ docker run -it --rm \
    --name angband \
    -v $HOME/.angband:/home/angband/.angband \
    anthonymastrean/angband
```
