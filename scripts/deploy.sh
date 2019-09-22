#!/bin/bash
# Deploy to GitHub Pages script 

git add . 

echo "Type commit message"
read commitMessage

git commit -m "$commitMessage"

git push origin master

echo "PUSH COMPLETE!!!!"

git commit --allow-empty -m "Trigger rebuild"
git push

echo "DEPLOY COMPLETE!!!!"