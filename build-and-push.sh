#!/bin/bash

docker rmi drabo/netchk
docker build -t netchk:drabo .
docker tag netchk:drabo drabo/netchk
docker push drabo/netchk
