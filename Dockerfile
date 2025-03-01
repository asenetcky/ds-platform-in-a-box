FROM rocker/verse:4.4.3
# RUN /rocker_scripts/install_geospatial.sh \
#   /rocker_scripts/install_pandoc.sh \
#   /rocker_scripts/install_python.sh \
#   /rocker_scripts/install_pyenv.sh \
#   /rocker_scripts/install_quarto.sh \
#   /rocker_scripts/install_tidyverse.sh 


# RUN R -e "install.packages('pak')" && \
#   R -e "pak::pkg_install(c('renv', 'remotes', 'devtools'))"

# set timezone
ENV TZ=America/New_York
