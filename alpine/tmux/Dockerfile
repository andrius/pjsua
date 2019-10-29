# vim:set ft=dockerfile:
FROM alpine:latest

LABEL maintainer="Andrius Kairiukstis <k@andrius.mobi>"

ENV ENV="/etc/profile"
ENV WORKDIR /app
WORKDIR ${WORKDIR}

RUN apk add --update --no-cache \
      pjsua \
      tmux \
 && echo "export PATH=\"${WORKDIR}:${PATH}\"" > /etc/profile.d/pjsua-path.sh \
 && chmod +x /etc/profile.d/pjsua-path.sh \
 && rm -rf /var/cache/apk/* \
           /tmp/* \
           /var/tmp/*

COPY . .

ENTRYPOINT ["/app/docker-entrypoint.sh"]
CMD ["./help"]

