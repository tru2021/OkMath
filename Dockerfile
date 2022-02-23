FROM alpine:edge

USER root

ENV LANG C.UTF-8

RUN apk update && \
    apk add --no-cache ca-certificates tor wget curl bash screen vim nano && \
    wget https://github.com/tsl0922/ttyd/releases/latest/download/ttyd.x86_64 -O /usr/local/bin/ttyd && \
    chmod a+rx /usr/local/bin/ttyd && \
    echo root:c68.300OQa|chpasswd && \
    rm -rf /var/cache/apk/*

ADD . /

RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]
