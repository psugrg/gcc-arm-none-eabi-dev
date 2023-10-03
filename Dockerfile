FROM ubuntu:22.04 AS base

RUN apt-get update  \
    && apt-get -y remove g++ gcc \
    && apt-get -y install \
    git \
    wget \
    make \
    cmake \
    gcc-arm-none-eabi \
    gdb-multiarch \
    openocd \
    stlink-tools \
    && rm -rf /var/lib/apt/lists/*
