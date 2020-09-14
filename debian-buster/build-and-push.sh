#!/bin/bash

docker rmi drabo/netchk-debian-buster
docker build -t netchk-debian-buster:drabo .
docker tag netchk-debian-buster:drabo drabo/netchk-debian-buster
docker push drabo/netchk-debian-buster
