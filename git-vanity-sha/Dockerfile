FROM ruby:alpine

RUN apk --no-cache --update add \
        git \
        openssh \
    && wget -q -O /usr/local/bin/git-vanity-sha https://raw.githubusercontent.com/mattbaker/git-vanity-sha/master/git-vanity-sha \
    && chmod +x /usr/local/bin/git-vanity-sha

VOLUME ["/git"]

WORKDIR /git

ENTRYPOINT ["git-vanity-sha"]
