FROM alpine:latest

RUN apk update && \
    apk upgrade && \
    apk add dumb-init openssh zsh rsync curl bind-tools drill iperf3 postgresql-client

ENTRYPOINT ["/usr/bin/dumb-init", "--"]

CMD ["/bin/zsh"]
