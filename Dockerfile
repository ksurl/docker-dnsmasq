FROM alpine:3.16.0

LABEL maintainer="ksurl"

LABEL org.opencontainers.image.source="https://github.com/ksurl/docker-dnsmasq"

RUN apk --no-cache add dnsmasq

VOLUME /etc/dnsmasq

EXPOSE 53 53/udp

ENTRYPOINT [ "dnsmasq", "-k" ]

