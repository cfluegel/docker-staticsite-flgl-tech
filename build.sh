#!/bin/bash 
#

# Only allow this script to run after all changes have been checked in 

if [ -n "$(git status -s)" ]; then 
  echo "Git repo is an unclean state! 🔥🔥🔥"
  echo 
  echo "⚠️ Make sure to check all changes before committing any change to the repo ⚠️" 
  
  echo "Consider to check in all modification before creating an new docker image."
  echo "e.g. git add . && git commit" 
  echo
  # TODO: Maybe consider an overwrite flag so I can willingly ignore this check :) 
  #       For all those who think they knew their stuff. 
  exit 1 
fi 

REPO="cfluegel/website-flgl-tech"

# Generate the docker image 
GITVERSION=$(git log -1 --pretty=%h)
VERSION="$(date +%Y%m%d)-${GITVERSION}"

TAG="$REPO:$VERSION"
LATEST="${REPO}:latest"

docker build  -t "$TAG" -t "$LATEST" --build-arg VERSION="$VERSION" .

docker push -a $REPO
