#!/bin/bash

cd topics-explorer-frontend
sudo docker build -f Dockerfile.dev -t topics-explorer-frontend-dev .
cd ..
cd topics-explorer-backend
sudo docker build -f Dockerfile.dev -t topics-explorer-backend-dev .
cd ..
cd dev-compose
sudo docker-compose up