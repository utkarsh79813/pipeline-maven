#! /bin/bash
# This scripts is for creating the package
echo "****************************************"
echo "******************Building Jar file**************"
cd /home/jenkins/jenkins-data/pipeline/jenkins/build
echo "you have pass the parameter as: $@"
#name= $@
docker run --rm -it -v "$(pwd)/java_app":/app -v $(pwd)/.m2:/root/.m2 -w /app maven:latest $@
#mvn -B -DskipTests clean package
sleep 10
cp /home/jenkins/jenkins-data/pipeline/java_app/target/my-app-1.0-SNAPSHOT.jar /home/jenkins/jenkins-data/pipeline/jenkins/build/
