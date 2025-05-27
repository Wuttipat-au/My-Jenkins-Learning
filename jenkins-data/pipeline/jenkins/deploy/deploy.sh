#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/prod /tmp/.auth <user prod>@<ip address prod>:/tmp/.auth
scp -i /opt/prod ./jenkins/deploy/publish <user prod>@<ip address prod>:/tmp/publish
ssh -i /opt/prod <user prod>@<ip address prod> "/tmp/publish"
