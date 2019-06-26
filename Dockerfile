FROM ubuntu:16.04
FROM python:latest
USER root
RUN apt-get update
RUN apt-get install python -y
RUN mkdir -p /servervol/serverdata
WORKDIR /servervol/serverdata
RUN echo $PWD
RUN chmod a+rwx .
RUN echo $PWD
ADD my-script.py ./
ADD server.py ./
ADD MainServer.py ./
RUN mkdir -p demo
RUN ls
VOLUME /servervol
RUN ls
