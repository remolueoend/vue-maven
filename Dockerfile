FROM maven:3.3.9-jdk-8

RUN apt-get update
RUN apt-get install sudo
RUN curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
RUN sudo apt-get install -y nodejs
RUN sudo npm install node-gyp -g