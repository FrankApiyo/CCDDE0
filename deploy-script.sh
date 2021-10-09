#!/bin/sh
lein run
git checkout --orphan gh-pages
git rm -rf .
cp -r public/CCDDE0/* .
rm -r public
rm -r target
git add *
git add .
git commit -a -m "Initial page commit"
git push origin +gh-pages
