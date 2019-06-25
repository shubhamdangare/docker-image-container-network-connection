FROM ubuntu:16.04
USER root
RUN apt-get update
RUN apt-get install python -y
WORKDIR servervol/serverdata
RUN echo $PWD
ADD my-script.py /servervol/serverdata
ADD server.py /servervol/serverdata
RUN mkdir -p demo
RUN python my-script.py
RUN python server.py
RUN ls
