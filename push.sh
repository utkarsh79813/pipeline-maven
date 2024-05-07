#! /bin/bash
echo "we are pushing images to docker hub"
sleep 2
IMAGE="maven-project"

echo "********Loging In ********"
docker login -u utkarsh79813 -p $PASS
echo "********Tagging image*********************"
docker tag $IMAGE:$BUILD_TAG utkarsh79813/$IMAGE:$BUILD_TAG
echo *********Pushing Image******************
docker push utkarsh79813/$IMAGE:$BUILD_TAG
