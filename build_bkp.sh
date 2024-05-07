#! /bin/bash
# This scripts is for creating the package

cd /home/jenkins/jenkins-data/pipeline
echo "you have pass the parameter as: $@"
name=$@
docker run --rm -it -v "$(pwd)/java_app":/app -v $(pwd)/.m2:/root/.m2 -w /app maven:latest $name
#mvn -B -DskipTests clean package
