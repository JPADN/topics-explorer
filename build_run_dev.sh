#!/bin/bash

cd topics-explorer-frontend
docker build -f Dockerfile.dev -t topics-explorer-frontend-dev .
cd ..
cd topics-explorer-backend
docker build -f Dockerfile.dev -t topics-explorer-backend-dev .
cd ..
cd dev-compose
docker-compose up