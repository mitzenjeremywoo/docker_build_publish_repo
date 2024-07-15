
FROM ubuntu:22.04 as base

RUN apt-get update && \
    apt-get install netcat-traditional -y && \
    apt-get install dnsutils -y && \ 
    apt-get install curl -y

