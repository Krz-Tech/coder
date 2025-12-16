FROM --platform=linux/amd64 ubuntu:latest

SHELL ["/bin/bash", "-c"]
ENV DEBIAN_FRONTEND=noninteractive

# All setup in a single RUN layer
RUN apt-get update && \
    apt-get install -y --no-install-recommends ca-certificates && \
    rm -f /etc/apt/sources.list.d/ubuntu.sources && \
    echo 'deb https://ftp.udx.icscoe.jp/Linux/ubuntu/ noble main restricted universe multiverse' > /etc/apt/sources.list && \
    echo 'deb https://ftp.udx.icscoe.jp/Linux/ubuntu/ noble-updates main restricted universe multiverse' >> /etc/apt/sources.list && \
    echo 'deb https://ftp.udx.icscoe.jp/Linux/ubuntu/ noble-security main restricted universe multiverse' >> /etc/apt/sources.list && \
    apt-get update && \
    # Enable parallel downloads for faster installation
    apt-get -o Acquire::Queue-Mode=host -o Acquire::Retries=3 install -y --no-install-recommends \
    curl \
    docker.io \
    git \
    jq \
    locales \
    nano \
    rsync \
    sudo \
    systemd \
    systemd-sysv \
    unzip \
    wget && \
    # Setup locale
    locale-gen ja_JP.UTF-8 && \
    # Setup user
    userdel -r ubuntu && \
    useradd coder --create-home --shell=/bin/bash --groups=docker --uid=1000 --user-group && \
    echo "coder ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/nopasswd && \
    # Cleanup
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/* /usr/share/man/*

ENV LANG=ja_JP.UTF-8 LANGUAGE=ja_JP.UTF-8 LC_ALL=ja_JP.UTF-8

USER coder