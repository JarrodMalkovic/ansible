#!/usr/bin/env bash

docker build -t ansible-playbook-runner .
docker run -d --name ansible-playbook-runner ansible-playbook-runner