FROM ubuntu:14.04

ADD ansible.deb /ansible.deb

RUN \
  apt-get update && \
  dpkg -i /ansible.deb || apt-get install -fy && \
  rm -rf /var/lib/apt/lists/* && rm -vf /ansible.deb

