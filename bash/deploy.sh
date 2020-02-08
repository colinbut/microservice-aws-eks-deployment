#!/bin/bash
cd ../k8s/
kubectl apply -f microservice-java-deployment.yml
kubectl apply -f microservice-java-service.yml