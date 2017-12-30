#!/bin/bash

PATH_TO_HERE=$(pwd)

echo "Remove previous revealjs docker container ..."
docker rm -f revealjs

echo "Run new revealjs docker container ..."
docker run -d \
           -p 8080:8000 \
           -v ${PATH_TO_HERE}/presentation/index.html:/usr/share/presentation/reveal.js/index.html \
           -v ${PATH_TO_HERE}/presentation/slides/slides.md:/usr/share/presentation/reveal.js/slides/slides.md \
           -v ${PATH_TO_HERE}/presentation/assets:/usr/share/presentation/reveal.js/assets/ \
           --name revealjs \
           revealjs

echo "Container is up and running:"
docker ps