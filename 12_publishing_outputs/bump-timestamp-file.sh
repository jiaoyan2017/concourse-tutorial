#!/bin/sh

set -e # fail fast
set -x # print commands

git clone resource-gist updated-gist

cd updated-gist
echo $(date) > bumpme
touch bumpme2

git config --global user.email "yan.jiao@thistech.com"
git config --global user.name "Yan Jiao"

git add .
git commit -m "Bumped date"
