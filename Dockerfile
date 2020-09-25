FROM ubuntu:bionic

RUN apt update -y \
  && apt install -y curl \
  && curl -sL https://deb.nodesource.com/setup_12.x | bash - \
  && apt-get update \
  && apt-get install -y nodejs \
  && apt-get install -y build-essential \
  && npm install -g npm@6 \
  && npm rebuild \
  && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["/bin/bash"]
