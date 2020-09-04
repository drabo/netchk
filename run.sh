#!/bin/bash

echo -e "\n\e[1;31mPull images\e[0m\n---"
docker-compose pull

echo -e "\n\e[1;31mStop containers\e[0m\n---"
docker-compose stop

echo -e "\n\e[1;31mDelete containers\e[0m\n---"
docker-compose rm -v -f

echo -e "\n\e[1;31mBuild and run new containers\e[0m\n---"
docker-compose up --build -d 
