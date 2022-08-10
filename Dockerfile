FROM golang:1.18.0-alpine3.15 AS build-env

ENV GO111MODULE=on

RUN apk update && apk add bash ca-certificates git gcc g++ libc-dev

RUN mkdir /chatapp

WORKDIR /chatapp
COPY . /chatapp/

RUN go build -o chatapp .

CMD ./chatapp