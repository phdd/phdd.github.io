#!/bin/bash

git config --global user.name "Travis CI"
git config --global user.email "joe@travis-ci.org"

git clone --recurse-submodules "https://${GH_TOKEN}@${GH_REF}" master

cd master
git checkout master
cp -r ../public/* ./

git add .
git commit -m "Deploy to GitHub Page"
git push --force --quiet "https://${GH_TOKEN}@${GH_REF}" master
