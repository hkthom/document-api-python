#!/bin/bash

set -o errexit -o nounset

if [ "$TRAVIS_BRANCH" != "master" -o "$BUILD_DOCS" != "true" ]
then
  echo "Not deploying docs"
  exit 0
fi

rev=$(git rev-parse --short HEAD)

cd site

git init
git config user.name "T8y8"
git config user.email "kingt8y8@gmail.com"


git remote add upstream "https://$GH_TOKEN@github.com/t8y8/document-api-python.git"
git fetch upstream
git reset upstream/gh-pages

touch .

git add -A .
git commit -m "auto-build rebuild pages at ${rev}"
git push -q upstream HEAD:gh-pages
