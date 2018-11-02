[![Docker Build Status](https://img.shields.io/docker/build/anthonymastrean/git-vanity-sha.svg)](https://hub.docker.com/r/anthonymastrean/git-vanity-sha/builds/) [![GitHub Link](https://img.shields.io/badge/github-mattbaker%2Fgit--vanity--sha-blue.svg)](https://github.com/mattbaker/git-vanity-sha)

# git vanity-sha

Vanity hex prefixes for your commit SHAs.

## RUN

```
$ docker run --rm -it \
    -v $PWD:/git \
    -v $HOME:/root \
    --name git-vanity-sha
    anthonymastrean/git-vanity-sha cafe
```
