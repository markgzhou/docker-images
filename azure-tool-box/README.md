# Azure Toolbox Docker Image - Linux
This docker-agent is built based from debian:buster-slim.
You can use this tool-box to debug network and other issues in K8s.
1. Docker Hub: https://hub.docker.com/repository/docker/markgzhou/azure-tool-box
2. Dockerfile: https://github.com/markgzhou/docker-images/tree/master/azure-tool-box
## Features
- azure-cli 2.27.1
- openjdk 11.0.12
- psql (PostgreSQL) 11.12

## How To Use in Docker
```bash
docker pull markgzhou/azure-tool-box
docker run markgzhou/azure-tool-box
```

## How To Use in K8s
```bash
kubectl apply -f https://raw.githubusercontent.com/markgzhou/docker-images/master/azure-tool-box/toolbox.yaml 
kubectl exec --stdin --tty toolbox -- bash
```