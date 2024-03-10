FROM alpine:latest
LABEL OS="Alpine:latest"
LABEL App="Apache Kafka"
LABEL Owner="Let's Synergize"
MAINTAINER "Srikant Ande <srikant.ande@gmail.com / YouTube: @srikantande>"
RUN apk update && \
    apk upgrade --no-cache && \
    apk add openjdk21-jre && \
    apk add bash
RUN /bin/bash
WORKDIR /app
ADD https://dlcdn.apache.org/kafka/3.7.0/kafka_2.13-3.7.0.tgz /app
RUN tar zxvf /app/kafka_2.13-3.7.0.tgz
RUN rm -rfv /app/kafka_2.13-3.7.0.tgz 
