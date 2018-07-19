FROM alpine:latest

RUN apk add --no-cache dumb-init openssh rsync curl

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
