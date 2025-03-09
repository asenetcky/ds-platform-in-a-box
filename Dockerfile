FROM rocker/verse:4.4.3

# set timezone
ENV TZ=America/New_York

# Args
ARG DOTFILES_URL_PAT 

# clone dotfiles repo
RUN git clone ${DOTFILES_URL_PAT} 
