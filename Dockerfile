FROM jupyter/base-notebook:python-3.7.4

LABEL maintainer="me@huy.dev"

# Need root privileges to install java:
USER root

# Trick to make `apt-get install adoptopenjdk-8-hotspot` work:
# https://stackoverflow.com/a/58161790/7075699
RUN mkdir -p /usr/share/man/man1

# Start of OpenJDK 8 installation on Debian 10
# https://linuxize.com/post/install-java-on-debian-10/#installing-openjdk-8
RUN apt-get update && apt-get install -yqq \
  apt-transport-https \
  ca-certificates \
  wget \
  dirmngr \
  gnupg \
  software-properties-common \
  zsh \
  vim \
  curl \
  git
RUN wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | apt-key add -
RUN add-apt-repository --yes https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/
RUN apt-get update && \
  apt-get install -yqq adoptopenjdk-8-hotspot && \
  java -version
# End of OpenJDK 8 installation on Debian 10

USER jovyan

# Install oh-my-zsh for interactive shell
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended

RUN pip install hail==0.2.32

WORKDIR $HOME/work
