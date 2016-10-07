#!/bin/bash
#File to deploy COB in docker


#build the image by adding war file
docker build  -t app-${BUILD_NUMBER} .


#run the image
if docker ps -a | grep "COB"; then 
 	docker rm -f COB
fi
docker run -d -p 8085:8080 --name COB app-${BUILD_NUMBER}