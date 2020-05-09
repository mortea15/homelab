#!/bin/bash
docker run --net=container:cloak -it --rm curlimages/curl curl ipinfo.io
#docker exec -it cloak curl ipinfo.io