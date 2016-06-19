FROM gliderlabs/alpine:latest

MAINTAINER codequest team <hello@codequest.com>

ADD . /src
WORKDIR /src

ENV PROTOBUF_TAG v2.6.1

RUN ./build.sh

ENTRYPOINT ["protoc"]
