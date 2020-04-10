# Microservice AWS EKS Deployment

## Overview

This is a companion sister project of [microservice-aws-eks-setup](http://github.com/colinbut/microservice-aws-eks-setup.git). That other project demonstrates how to automatically provision a Kubernetes cluster on AWS EKS via Terraform. Whereas, this project showcasing the automated deployment of an app/microservice to the AWS EKS cluster. 

## Assumptions:

- kubectl is setup to point to the AWS EKS cluster.

## Pre-requisites:

- a kubconfig is setup for the AWS EKS cluster made

for e.g.

I used `aws-cli` to update my kubeconfig for the aws eks cluster i made in [microservice-aws-eks-setup](http://github.com/colinbut/microservice-aws-eks-setup.git) to store into `~/.kube/aws-eks-config` file.

aws eks --region eu-west-2 update-kubeconfig --name microservice-aws-eks-cluster --kubeconfig ~/.kube/aws-eks-kubeconfig

## Ansible

Running from local machine...

Using Ansible for deployment you just run the ansible-playbook command on the CLI and pass in the nanme of the microservice to deploy as an ansible extra variable:

navigate to the ansible subfolder first.

#### Deploy

For example, for microservice-java:

```bash
ansible-playbook deploy.yml --extra-vars "MICROSERVICE_NAME=microservice-java"
```

or for microservice-nodejs:

```bash
ansible-playbook deploy.yml --extra-vars "MICROSERVICE_NAME=microservice-nodejs"
```


#### Rollback

For example, for microservice-java:

```bash
ansible-playbook rollback.yml --extra-vars "MICROSERVICE_NAME=microservice-java"
```

or for microservice-nodejs:

```bash
ansible-playbook rollback.yml --extra-vars "MICROSERVICE_NAME=microservice-nodejs"
```

## Bash

navigate to bash subfolder and execute the following bash scripts to do either:

#### Deploy
```bash
./deploy-microservice-java.sh
./deploy-microservice-nodejs.sh
```

#### Rollback
```bash
./rollback-microservice-java.sh
./rollback-microservice-nodejs.sh
```

## Tech

- Ansible
- Kubernetes
- Bash