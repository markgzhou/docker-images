# Docker Image for Azure Devops Agent - Linux
This docker-agent is built based on the [instructions](https://docs.microsoft.com/en-us/azure/devops/pipelines/agents/docker?view=azure-devops#linux) provided by Microsoft Azure.

## Features
- Base image OS: ubuntu:18.04
- Built with "3.7.10", "3.8.8" and "3.9.2" Python versions
- Built and Support OpenJDK8 (8u282-b08)

## How To Use
```sh
docker pull markgzhou/azure-devops-agent
docker run -d --name azure-devops-agent \
 --restart always \
 -e AZP_URL=<Azure DevOps instance> \
 -e AZP_TOKEN=<PAT token> \
 -e AZP_AGENT_NAME=mydockeragent markgzhou/azure-devops-agent
```
Please refer to [Microsoft Azure Devops documentation](https://docs.microsoft.com/en-us/azure/devops/pipelines/agents/docker?view=azure-devops#start-the-image-1) for more detailed information.
