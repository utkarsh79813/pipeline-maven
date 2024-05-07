#! /bin/bash
# This scripts is for creating the package

cd /home/jenkins/jenkins-data/pipeline
echo "you have pass the parameter as: $@"
#name= $@
docker run --rm -it -v "$(pwd)/java_app":/app -v $(pwd)/.m2:/root/.m2 -w /app maven:latest $@
#mvn -B -DskipTests clean package
sleep 5
cp /home/jenkins/jenkins-data/pipeline/java_app/target/my-app-1.0-SNAPSHOT.jar /home/jenkins/jenkins-data/pipeline/jenkins/build/

echo "***********************"
echo "Building Docker Images"
sleep 5
export BUILD_TAG=10
cd jenkins/build && docker-compose -f docker-compose-build.yml build --no-cache
#sleep 3
#sh docker images|grep -i app
