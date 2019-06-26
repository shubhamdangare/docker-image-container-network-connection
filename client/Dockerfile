FROM ubuntu:16.04
USER root
RUN apt-get update
RUN apt-get install python -y
RUN mkdir -p /clientvol/clintdata
WORKDIR /clientvol/clintdata
RUN echo $PWD
ADD client.py ./
RUN ls
VOLUME /clientvol
