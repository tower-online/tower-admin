FROM ubuntu:24.04 as base

RUN apt-get update && \
    apt-get install -y \
    git \
    clang \
    cmake


FROM base AS build

WORKDIR /app
COPY . .