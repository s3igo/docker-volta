FROM --platform=linux/amd64 debian:bullseye-slim

# install dependencies
RUN apt update && apt install -y \
  curl \
  git \
  git-lfs \
  make \
  && rm -rf /var/lib/apt/lists/*

# install Volta
RUN curl https://get.volta.sh | bash

# set environment variables
ENV VOLTA_HOME=/root/.volta
ENV PATH=${VOLTA_HOME}/bin:${PATH}

# install dotfiles
RUN curl -L sh.s3igo.me | bash
