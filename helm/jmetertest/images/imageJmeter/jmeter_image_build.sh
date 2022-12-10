#!/bin/bash

JMETER_VERSION="5.5"
EXPORTER_VERSION="0.6.0"
OPENJDK_VERSION="18"

TAG=`git rev-parse --short HEAD`

docker build \
--build-arg JMETER_VERSION=${JMETER_VERSION} \
--build-arg OPENJDK_VERSION=${OPENJDK_VERSION} \
--build-arg EXPORTER_VERSION=${EXPORTER_VERSION} \
-t "helloyuanyuan/jmeter:${TAG}" \
-t "helloyuanyuan/jmeter:latest" \
--platform linux/amd64 .