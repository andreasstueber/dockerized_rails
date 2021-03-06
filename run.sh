#!/bin/sh

echo '--- run yarn install'
yarn install

echo '--- install latest bundler'
gem install bundler

echo '--- run bundle install'
bundle install

# HERE YOU CAN RUN ANY OTHER SCRIPT BEFORE CONTAINER BUILDING

echo '--- create docker image and up it'
docker-compose up -d --build
