#!/bin/bash

BBGREEN='\033[1;92m'
RESET='\033[0m'

echo -e "${BBGREEN}Stop local Kubernetes cluster...${RESET}"

minikube stop

echo -e "${BBGREEN}Delete local Kubernetes cluster...${RESET}"

minikube delete