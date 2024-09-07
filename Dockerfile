FROM rocker/verse:latest

RUN apt update && \
    yes | unminimize && \
    apt install -y man-db && \
    rm -rf /var/lib/apt/lists/*
