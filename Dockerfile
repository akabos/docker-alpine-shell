FROM alpine:latest

RUN apk upgrade --no-cache
RUN apk add --no-cache dumb-init shadow openssh zsh rsync curl bind-tools drill postgresql-client
RUN chsh -s /bin/zsh root

ENTRYPOINT ["/usr/bin/dumb-init", "--"]

CMD ["/bin/zsh"]
