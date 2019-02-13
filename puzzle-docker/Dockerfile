FROM ubuntu:18.04

RUN apt-get update && apt-get install less vim git -y

COPY Dockerfile /opt/Dockerfile-puzzle
COPY README.md /opt/README-puzzle.md

## this works on the commandline but not within the docker. Do I need different quotes?
RUN bash -c 'useradd broccoli -m -s /bin/bash; echo -e "santaclaus\nsantaclaus" | passwd broccoli'
