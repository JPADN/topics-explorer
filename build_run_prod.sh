#!/bin/bash
cd topics-explorer-frontend
sudo docker build -f Dockerfile.prod -t topics-explorer-frontend .
cd ..
cd topics-explorer-backend
sudo docker build -f Dockerfile.prod -t topics-explorer-backend .
cd ..
cd prod-compose
sudo docker-compose up