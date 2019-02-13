FROM ubuntu:18.04

RUN apt-get update && apt-get install less vim git sudo -y

COPY Dockerfile /opt/Dockerfile-puzzle
COPY README.md /opt/README-puzzle.md

RUN bash -c 'useradd broccoli -m -s /bin/bash; echo -e "santaclaus\nsantaclaus" | passwd broccoli'
RUN adduser broccoli sudo

RUN bash -c 'useradd potato -m -s /bin/bash; echo -e "santaclaus\nsantaclaus" | passwd potato'
RUN bash -c 'useradd cheese -m -s /bin/bash; echo -e "santaclaus\nsantaclaus" | passwd cheese'
