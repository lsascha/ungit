FROM node:12-slim

ENV UNGIT_VER 1.5.20

RUN apt-get update && apt-get install -y git ssh net-tools vim --no-install-recommends

RUN npm install -g ungit@${UNGIT_VER}

RUN mkdir /data

RUN mkdir /home/node/.ssh

ADD dot-ungitrc /home/node/.ungitrc

WORKDIR /data

EXPOSE 8448

user node

ENTRYPOINT ["ungit"]
