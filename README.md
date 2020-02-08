# Microservice AWS EKS Deployment

## Ansible

Using Ansible for deployment you just run the ansible-playbook command on the CLI and pass in the nanme of the microservice to deploy as an ansible extra variable:

For example, for microservice-java:

```bash
ansible-playbook deploy.yml --extra-vars "MICROSERVICE_NAME=microservice-java"
```

or for microservice-nodejs:

```bash
ansible-playbook deploy.yml --extra-vars "MICROSERVICE_NAME=microservice-nodejs"
```