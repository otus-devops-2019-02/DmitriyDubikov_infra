#!/bin/bash
cd /home/ddi1
echo ${PWD}
git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install
puma -d
ps aux | grep puma
