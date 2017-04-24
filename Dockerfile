FROM selenium/node-chrome

USER root

RUN apt-get update
RUN apt-get install sudo
RUN sudo apt-get install -y curl
RUN sudo apt-get install -y build-essential
RUN sudo apt-get install -y python
RUN sudo apt-get install -y make
RUN sudo apt-get install -y g++
RUN curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
RUN sudo apt-get install -y nodejs
RUN sudo npm install node-gyp -g
