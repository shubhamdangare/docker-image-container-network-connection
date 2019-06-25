FROM ubuntu:16.04
USER root
RUN apt-get update
RUN apt-get install python -y
WORKDIR clientvol/clintdata
RUN echo $PWD
ADD client.py /clientvol/clintdata
RUN mkdir -p demo
CMD ["python","client.py"]
RUN ls
