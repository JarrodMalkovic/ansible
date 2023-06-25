#!/usr/bin/env bash

docker build -t ansible-playbook-runner .
docker run ansible-playbook-runner