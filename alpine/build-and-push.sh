#!/bin/bash

docker rmi drabo/netchk-alpine
docker build -t netchk-alpine:drabo .
docker tag netchk-alpine:drabo drabo/netchk-alpine
docker push drabo/netchk-alpine
