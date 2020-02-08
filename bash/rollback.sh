#!/bin/bash
cd ../k8s/
kubectl delete service microservice-java
kubectl delete deployment microservice-java-deployment
