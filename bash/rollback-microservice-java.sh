#!/bin/bash
cd ../k8s/microservice-java/
kubectl delete service microservice-java-service
kubectl delete deployment microservice-java-deployment

