#!/bin/bash

TAG=`git rev-parse --short HEAD`

docker push "helloyuanyuan/jmeter:${TAG}"
docker push "helloyuanyuan/jmeter:latest"