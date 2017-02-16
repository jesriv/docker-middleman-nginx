#!/bin/bash
cd /usr/src
git clone $GIT_URL app
cd /usr/src/app
bundle install
npm install