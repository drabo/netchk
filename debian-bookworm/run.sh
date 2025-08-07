#!/bin/bash

source ./version.rc

if [[ "$1" != "clean" && "$1" != "delete" ]]; then
    echo -e "\n\e[1;31mPull images\e[0m\n---"
    docker-compose pull
fi

echo -e "\n\e[1;31mStop containers\e[0m\n---"
docker-compose stop

echo -e "\n\e[1;31mDelete containers\e[0m\n---"
docker-compose rm -v -f

if [[ "$1" != "clean" && "$1" != "delete" ]]; then
    echo -e "\n\e[1;31mBuild new containers\e[0m\n---"
    docker-compose build --build-arg PY_VER=${PY_VER}

    echo -e "\n\e[1;31mRun new containers\e[0m\n---"
    docker-compose up -d
fi
