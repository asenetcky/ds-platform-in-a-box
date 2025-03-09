FROM rocker/verse:4.4.3

# set timezone
ENV TZ=America/New_York

# Args
ARG DOTFILES_URL_PAT 

# clone dotfiles repo
RUN apt-get update > /dev/null && \ 
  apt-get install -y --no-install-recommends \ 
  stow > /dev/null && \
  rm -rf /var/lib/apt/lists/*


WORKDIR /root
RUN git clone -b ubuntu-main --single-branch ${DOTFILES_URL_PAT} /root/dotfiles/ && \
  mv .bashrc .bashrc.bak && \
  mv .profile .profile.bak 

WORKDIR /root/dotfiles
RUN ["stow", "."] 
RUN ["bash", "setup.sh"]
RUN ["bash", ".bashrc"]

WORKDIR /root

