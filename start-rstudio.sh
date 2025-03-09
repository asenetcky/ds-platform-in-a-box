#!/bin/bash

bash create-env.sh

docker run \
  --name ds-rstudio \
  --env-file .env \
  --rm \
  -tid \
  -p 127.0.0.1:8787:8787 \
  -v ${HOME}/data:/root/data \
  asenetcky/ds-rstudio
# -v ${PWD}/.Rprofile/:/root/.Rprofile
# # -v ${PWD}/.config/:/root/.config/ \

rm -rf .env
