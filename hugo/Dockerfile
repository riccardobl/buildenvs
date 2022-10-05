ARG NAMESPACE=""
FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update&&apt-get upgrade -y &&apt-get clean

RUN apt-get install -y \
build-essential     \
curl \
sudo \
git \
locales \
&& apt-get clean 

RUN localedef -i en_US -f UTF-8 en_US.UTF-8 \
&& useradd -m -s /bin/bash linuxbrew \
&& echo 'linuxbrew ALL=(ALL) NOPASSWD:ALL'  >> /etc/sudoers

USER linuxbrew

RUN  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

USER root

ENV HOMEBREW_PREFIX="/home/linuxbrew/.linuxbrew"
ENV HOMEBREW_CELLAR="/home/linuxbrew/.linuxbrew/Cellar"
ENV HOMEBREW_REPOSITORY="/home/linuxbrew/.linuxbrew/Homebrew"
ENV PATH="/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:$PATH"
ENV MANPATH="/home/linuxbrew/.linuxbrew/share/man:$MANPATH"
ENV INFOPATH="/home/linuxbrew/.linuxbrew/share/info:$INFOPATH"

RUN brew install hugo        

RUN  echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /home/linuxbrew/.profile \
    echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/linuxbrew/.profile \
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

RUN apt-get install -y \
curl -sL https://deb.nodesource.com/setup_16.x -o /tmp/nodesource_setup.sh \
bash /tmp/nodesource_setup.sh \
nodejs \
npm \
&& node -v \
&& apt-get clean 
