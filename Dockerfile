FROM alpine:3.16.0

LABEL maintainer "ksurl"

RUN apk --no-cache add dnsmasq

VOLUME /etc/dnsmasq

EXPOSE 53 53/udp

ENTRYPOINT [ "dnsmasq", "-k" ]

