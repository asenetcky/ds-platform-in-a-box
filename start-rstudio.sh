#!/bin/bash

bash create-env.sh

docker run \
  --env-file ${PWD}/.env \
  --rm \
  -tid \
  -p 127.0.0.1:8787:8787 \
  -v ${HOME}/data:/root/data \
  -v ${PWD}/.config/:/root/.config/ \
  -v ${PWD}/.Rprofile/:/root/.Rprofile \
  asenetcky/ds-rstudio

rm -rf .env
