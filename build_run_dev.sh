#!/bin/bash

cd topics-explorer-frontend
sudo docker build -f Dockerfile.dev -t reddit-spring-frontend-dev .
cd ..
cd topics-explorer-backend
sudo docker build -f Dockerfile.dev -t reddit-spring-backend-dev .
cd ..
cd dev-compose
sudo docker-compose up