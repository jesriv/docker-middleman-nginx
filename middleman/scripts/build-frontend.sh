#!/bin/bash
cd /usr/src/app
git pull origin master
bundle install
npm install
middleman build
cp -fR /usr/src/app/build /usr/src/