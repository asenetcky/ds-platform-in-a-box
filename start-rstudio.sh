#!/bin/bash

docker run \
  --env-file .env \
  --rm \
  -ti \
  -p 8787:8787 \
  -v /data:/data \
  rstudio
