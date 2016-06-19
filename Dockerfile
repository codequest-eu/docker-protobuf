FROM gliderlabs/alpine:latest

MAINTAINER codequest team <hello@codequest.com>

ADD . /src
WORKDIR /src

ENV PROTOBUF_TAG v2.5.0

RUN ./build.sh

ENTRYPOINT ["protoc"]
