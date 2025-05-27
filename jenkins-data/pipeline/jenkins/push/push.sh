#!/bin/bash

echo "*********************"
echo "*** Pushing image ***"
echo "*********************"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u <Docker username> -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG <Docker username>/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push <Docker username>/$IMAGE:$BUILD_TAG
