#!/bin/bash
cd /usr/src/app
git pull origin master
bundle install
middleman build
if [ -e "/usr/src/app/package.json" ]; then npm install; fi
cp -fR /usr/src/app/build /usr/src/