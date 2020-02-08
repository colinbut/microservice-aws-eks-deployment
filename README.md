# Microservice AWS EKS Deployment

## Ansible

Using Ansible for deployment you just run the ansible-playbook command on the CLI and pass in the nanme of the microservice to deploy as an ansible extra variable:

navigate to the ansible subfolder first.

For example, for microservice-java:

```bash
ansible-playbook deploy.yml --extra-vars "MICROSERVICE_NAME=microservice-java"
```

or for microservice-nodejs:

```bash
ansible-playbook deploy.yml --extra-vars "MICROSERVICE_NAME=microservice-nodejs"
```

## Bash

navigate to bash subfolder and execute the following bash scripts to do either:

#### Deploy
```bash
./deploy.sh
```

#### Rollback
```bash
./rollback.sh
```