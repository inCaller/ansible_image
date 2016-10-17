FROM ubuntu:16.04

RUN \
  apt-get update && \
  apt-get install -y software-properties-common  && \
  apt-add-repository -y ppa:ansible/ansible  && \
  apt-get update  && \
  apt-get install -y ansible rsync && \
  rm -rf /var/lib/apt/lists/*
