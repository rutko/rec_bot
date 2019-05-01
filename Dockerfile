FROM ubuntu:16.04
    RUN apt-get update \
      && apt-get install -y curl vim git build-essential ffmpeg \
      && curl -sL https://deb.nodesource.com/setup_9.x | bash - \
      && apt-get install -y nodejs
WORKDIR /app
    COPY \
      package.json \
      package-lock.json \
      /app/
    RUN npm install
    COPY . /app
