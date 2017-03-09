FROM resin/rpi-raspbian:jessie-20170111

RUN apt-get update && apt-get -y upgrade

RUN apt-get -y install tor
