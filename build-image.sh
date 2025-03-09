#!/bin/bash

DOTFILES_URL_PAT=$(op item get lqrgou4leh2ddhhwnh4stf3iya --vault dev-containers --fields label=url-pat --reveal)
docker build --build-arg DOTFILES_URL_PAT="$DOTFILES_URL_PAT" -t asenetcky/ds-rstudio .
unset DOTFILES_URL_PAT
