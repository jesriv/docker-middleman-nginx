#!/bin/bash
cd /usr/src
git clone $GIT_URL app
cd /usr/src/app
bundle install
if [ -e "/usr/src/app/package.json" ]; then npm install; fi