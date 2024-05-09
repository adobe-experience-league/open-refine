#!/usr/bin/env bash

docker pull experienceleague.azurecr.io/open-refine:latest
docker stop open-refine
docker container rm open-refine
docker run -d -p 8080:3333 --name=open-refine -e REFINE_MEMORY=2000M -e REFINE_MIN_MEMORY=2000M --cpus=4 --memory=2g --restart=unless-stopped experienceleague.azurecr.io/open-refine:latest