FROM selenium/node-chrome

USER root
RUN apt-get update
RUN apt-get install sudo
RUN curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
RUN sudo apt-get install -y nodejs
RUN sudo npm install node-gyp -g
