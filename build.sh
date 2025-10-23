#!/bin/bash

####
## E.g. ./build.sh
####

docker rmi respeer-docs-webui npool/respeer-docs-webui

docker build . -t respeer-docs-webui || exit 1

docker tag respeer-docs-webui:latest docker.io/npool/respeer-docs-webui:latest
docker push npool/respeer-docs-webui:latest
