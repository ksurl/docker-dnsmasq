# Docker image for dnsmasq

[![](https://img.shields.io/badge/Docker%20Hub--blue)](https://hub.docker.com/r/ksurl/dnsmasq) [![](https://img.shields.io/badge/GitHub%20Container%20Registry--yellow)](https://github.com/users/ksurl/packages/container/package/dnsmasq)

[![](https://img.shields.io/github/v/tag/ksurl/docker-dnsmasq?label=image%20version&logo=docker)](https://hub.docker.com/r/ksurl/dnsmasq) [![](https://img.shields.io/docker/image-size/ksurl/dnsmasq/latest?color=lightgrey&logo=Docker)]() [![](https://img.shields.io/github/workflow/status/ksurl/docker-dnsmasq/build?label=build&logo=Docker)](https://github.com/ksurl/docker-dnsmasq/actions?query=workflow%3Abuild)

## Usage

### docker cli

    docker run -d \
        --name=dnsmasq \
        --cap-add=NET_ADMIN \
        -v ./dnsmasq.conf:/etc/dnsmasq.conf
        -p 53:53/udp \
        ghcr.io/ksurl/dnsmasq

### docker-compose

    version: "3"
    services:
      dnsmasq:
        image: ghcr.io/ksurl/dnsmasq
        container_name: dnsmasq
        cap_add:
          - NET_ADMIN
        ports:
          - 53:53/udp
        volumes:
          - ./dnsmasq.conf:/etc/dnsmasq.conf
        restart: always

### Parameters

| Parameter | Function | Default |
| :----: | --- | --- |
| `-v /etc/dnsmasq.conf` | Config file goes here | |
