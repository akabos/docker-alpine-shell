FROM alpine:latest

RUN apk add --no-cache dumb-init shadow openssh bash bash-completion rsync curl
RUN chsh -s /bin/bash root

ENTRYPOINT ["/usr/bin/dumb-init", "--"]

CMD ["/bin/bash"]
