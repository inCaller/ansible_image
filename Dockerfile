FROM ubuntu:16.04

RUN \
  apt-get update && \
  apt-get install -y git jq && \
  rm -rf /var/lib/apt/lists/*
