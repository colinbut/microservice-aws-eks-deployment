#!/bin/bash
cd ../k8s/microservice-nodejs/
kubectl delete service microservice-nodejs-service
kubectl delete deployment microservice-nodejs-deployment

