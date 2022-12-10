#!/bin/bash

TAG=`git rev-parse --short HEAD`

docker push "helloyuanyuan/jmetertestscript:${TAG}"
docker push "helloyuanyuan/jmetertestscript:latest"