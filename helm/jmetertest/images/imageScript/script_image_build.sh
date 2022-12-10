#!/bin/bash

TAG=`git rev-parse --short HEAD`

docker build \
-t "helloyuanyuan/jmetertestscript:${TAG}" \
-t "helloyuanyuan/jmetertestscript:latest" \
--platform linux/amd64 .