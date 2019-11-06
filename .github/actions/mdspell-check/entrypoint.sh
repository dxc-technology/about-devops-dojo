#!/bin/sh

#set -e
#set -x
set -o pipefail

if [[ -z "$GITHUB_WORKSPACE" ]]; then
  echo "Set the GITHUB_WORKSPACE env variable."
  exit 1
fi

if [[ -z "$GITHUB_REPOSITORY" ]]; then
  echo "Set the GITHUB_REPOSITORY env variable."
  exit 1
fi

cd $GITHUB_WORKSPACE
echo "--> Install markdown-spellcheck"
npm install markdown-spellcheck

echo "--> spellcheck markdown files using mdspell"
./node_modules/markdown-spellcheck/bin/mdspell -r -n -a --en-us --dictionary dicts/en_US-large '**/*.md' '!**/node_modules/**/*.md'