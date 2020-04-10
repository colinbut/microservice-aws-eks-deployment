#!/bin/bash
cd ../k8s/microservice-nodejs/
kubectl apply -f microservice-nodejs-deployment.yml
kubectl apply -f microservice-nodejs-service.yml