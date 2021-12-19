FROM node:12-slim

ENV UNGIT_VER 1.5.18

RUN apt-get update && apt-get install -y git ssh net-tools vim --no-install-recommends

RUN npm install -g ungit@${UNGIT_VER}

RUN mkdir /data

ADD dot-ungitrc /root/.ungitrc
ADD known_hosts /root/.ssh/

WORKDIR /data

EXPOSE 8448

ENTRYPOINT ["ungit"]

