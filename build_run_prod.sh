#!/bin/bash
cd topics-explorer-frontend
docker build -f Dockerfile.prod -t topics-explorer-frontend .
cd ..
cd topics-explorer-backend
docker build -f Dockerfile.prod -t topics-explorer-backend .
cd ..
cd prod-compose
docker-compose up -d