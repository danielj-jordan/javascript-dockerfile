##
##  setup ubuntu docker image for use with exercism javascript code exercises
##
FROM ubuntu
MAINTAINER Daniel Jordan
RUN apt-get -qq update
RUN apt-get update && apt-get install -y sudo && rm -rf /var/lib/apt/lists/*
RUN apt-get -qq update
RUN apt-get -qq -y install curl
RUN curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
RUN apt-get install -y nodejs
RUN npm install -g jasmine
RUN npm install -g eslint
RUN npm install -g eslint-plugin-jasmine
RUN npm install -g eslint-config-airbnb-es5
RUN npm install -g eslint-plugin-react
RUN npm install -g babel-eslint
