FROM alpine:latest

RUN apk update && \
    apk upgrade && \
    apk add dumb-init openssh zsh tmux rsync curl bind-tools drill iperf3 tcpdump postgresql-client

ENTRYPOINT ["/usr/bin/dumb-init", "--"]

CMD ["/bin/zsh"]
