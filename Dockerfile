FROM --platform=linux/amd64 golang:1.21.4-alpine3.18

RUN  apk add make

RUN adduser -D go

USER go

WORKDIR /home/go/app

