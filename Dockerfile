FROM rocker/rstudio:4.4.2
RUN /rocker_scripts/install_geospatial.sh \
  /rocker_scripts/install_pandoc.sh \
  /rocker_scripts/install_python.sh \
  /rocker_scripts/install_pyenv.sh \
  /rocker_scripts/install_quarto.sh \
  /rocker_scripts/install_tidyverse.sh 

# set timezone
ENV TZ=America/New_York

