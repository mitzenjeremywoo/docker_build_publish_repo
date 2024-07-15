
FROM ubuntu:22.04 as base

RUN apt-get update && \
    apt-get install netcat-traditional -y && \
    apt-get install dnsutils -y && \ 
    apt-get install curl -y && \ 
    apt-get install telnet -y && \ 
    apt-get install iputils-ping -y && \ 
    rm -rf /var/lib/apt/lists/* &&  \
    rm -rf /tmp/* /var/tmp/*

## util to connect to sql, postgres and mongdb database 

## ping trader-ci-1.progressive.co.nz
## telnet foctestdbserver.database.windows.net 1433