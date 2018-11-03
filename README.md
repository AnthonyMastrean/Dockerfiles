[![Play With Docker](https://img.shields.io/badge/labs-play--with--docker.com-blue.svg)](https://labs.play-with-docker.com/) [![Docker Hub](https://img.shields.io/badge/docker%20hub-anthonymastrean-blue.svg)](https://hub.docker.com/u/anthonymastrean/)

# Dockerfiles

Finally, Dockerfiles!

## Build Patterns

The recommendation is to use [multistage builds](https://docs.docker.com/develop/develop-images/multistage-build/) and, apparently, they're supported on the Docker Hub! But, you might still find a reason to write a goofy single-stage build.

### apt-get

I forget where I first saw this pattern, but the idea is to install all of the packages, including dev/build packages, do the work, then mark all of the unnecessary packages as purgable.

```
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        foo \
        bar \
        baz \
    && ... build commands... 
    && apt-mark auto '.*' > /dev/null \
    && apt-mark manual "bar" \
    && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false \
    && rm -fr /var/cache/apt/* /var/lib/apt/lists/*
```

### apk

_TBD!_
