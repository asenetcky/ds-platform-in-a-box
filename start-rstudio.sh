#!/bin/bash

docker run \
  --env-file .env \
  --rm \
  -ti \
  -p 127.0.0.1:8787:8787 \
  -v /data:/root/data \
  -v ${PWD}/.config/:/root/.config/ \
  -v ${PWD}/.Rprofile/:/root/.Rprofile \
  asenetcky/ds-rstudio:0.1.0
