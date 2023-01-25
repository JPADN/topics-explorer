#!/bin/bash
cd topics-explorer-frontend
sudo docker build . -t reddit-spring-frontend
cd ..
cd topics-explorer-backend
./mvnw clean package -Dmaven.test.skip
sudo docker build . -t reddit-spring-backend
cd ..
cd prod-compose
sudo docker-compose up