FROM maven:3.3.9-jdk-8

RUN apt-get update
RUN apt-get install sudo
RUN curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
RUN sudo apt-get install -y nodejs
RUN sudo npm install node-gyp -g

RUN apt-get update && apt-get install -y xvfb

# Install Firefox 45.4.0 (https://github.com/SeleniumHQ/selenium/blob/master/java/CHANGELOG#L33)
RUN curl -o /var/tmp/firefox-45.4.0esr.tar.bz2 https://ftp.mozilla.org/pub/firefox/releases/45.4.0esr/linux-x86_64/en-US/firefox-45.4.0esr.tar.bz2
RUN tar xvfj /var/tmp/firefox-45.4.0esr.tar.bz2
RUN ln -s /firefox/firefox-bin /usr/bin/firefox

RUN wget https://github.com/mozilla/geckodriver/releases/download/v0.13.0/geckodriver-v0.13.0-linux64.tar.gz
RUN tar -xvzf geckodriver*
RUN chmod +x geckodriver
RUN ln -s geckodriver /usr/bin/geckodriver