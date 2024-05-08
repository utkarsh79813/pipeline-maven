#! /bin/bash
# This scripts is for creating the package

WORKSPACE=/var/jenkins_home/workspace/pipeline-docker-maven
echo "The workspace is set to: $WORKSPACE"
echo "you have pass the parameter as: $@"
#name= $@
#docker run --rm -it -v $WORKSPACE/java_app:/app -v $WORKSPACE/.m2:/root/.m2 -w /app maven:latest $@
#docker run --rm -it -v $(WORKSPACE)/java_app:/app -v $WORKSPACE/.m2:/root/.m2 -w /app maven:latest $@
docker run --rm  -v  $WORKSPACE/java_app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"
#mvn -B -DskipTests clean package###
##sleep 5
##cp $(WORKSPACE)/java_app/target/my-app-1.0-SNAPSHOT.jar $(WORKSPACE)/jenkins/build/

echo "***********************"
echo "Building Docker Images"
##sleep 5
##export BUILD_TAG=10
####cd jenkins/build && docker-compose -f docker-compose-build.yml build --no-cache
#sleep 3
#sh docker images|grep -i app
