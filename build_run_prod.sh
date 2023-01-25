#!/bin/bash
cd redditspring-frontend
sudo docker build . -t reddit-spring-frontend
cd ..
cd redditspring-backend
./mvnw clean package -Dmaven.test.skip
sudo docker build . -t reddit-spring-backend
cd ..
cd prod-compose
sudo docker-compose up