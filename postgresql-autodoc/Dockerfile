FROM debian:stretch-slim

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        postgresql-autodoc \
    && rm -fr /var/cache/apt/* /var/lib/apt/lists/*

ENTRYPOINT ["postgresql-autodoc"]
