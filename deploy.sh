#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /home/jenkins/jenkins-data/pipeline/xyz /tmp/.auth utkarsh@ip-172-31-94-203.ec2.internal:/tmp/.auth
#deploy_remote.sh
scp -pr -i /home/jenkins/jenkins-data/pipeline/xyz /home/jenkins/jenkins-data/pipeline/deploy_remote utkarsh@ip-172-31-94-203.ec2.internal:/tmp/deploy_remote
ssh -i /home/jenkins/jenkins-data/pipeline/xyz utkarsh@ip-172-31-94-203.ec2.internal "/tmp/deploy_remote"
