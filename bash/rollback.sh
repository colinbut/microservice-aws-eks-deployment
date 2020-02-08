#!/bin/bash
cd ../k8s/
kubectl delete service microservice-java-service
kubectl delete deployment microservice-java-deployment
