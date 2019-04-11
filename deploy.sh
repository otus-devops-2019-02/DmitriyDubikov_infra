#!/bin/bash
git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install
puma -d
ps aux | grep puma
echo "ddi test"
echo ${TRAVIS_PULL_REQUEST_BRANCH:-$TRAVIS_BRANCH}
echo "ddi test2"
