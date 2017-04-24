FROM maven:3.3.9-jdk-8

RUN apt-get update
RUN curl -sL https://deb.nodesource.com/setup_6.x | -E bash -
RUN apt-get install -y nodejs
RUN npm install node-gyp -g