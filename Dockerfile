FROM --platform=linux/amd64 debian:bullseye-slim

# install dependencies
RUN apt update && apt install -y git git-lfs make curl && rm -rf /var/lib/apt/lists/*

# install Volta
RUN curl https://get.volta.sh | bash

# set environment variables
ENV VOLTA_HOME=/root/.volta
ENV PATH=$VOLTA_HOME/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

# install dotfiles
RUN curl -L sh.s3igo.me | bash
