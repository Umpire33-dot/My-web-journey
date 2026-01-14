#!/bin/bash

# Usage: ./git-autosave.sh "commit message"

if [ ! -d ".git" ]; then
   git init
   echo "Empty Git repositories intialized"
fi

git add .

if [ -z "$1" ]; then
   COMMIT_MSG="Auto commit"
else
   COMMIT_MSG=$1
fi
git commit -m "$COMMIT_MSG"

git push -u origin main

echo "Your .git files has been intialized and pushed to origin"

