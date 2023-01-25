#!/bin/bash
cd topics-explorer-frontend
sudo docker build . -t topics-explorer-frontend
cd ..
cd topics-explorer-backend
sudo docker build . -t topics-explorer-backend
cd ..
cd prod-compose
sudo docker-compose up