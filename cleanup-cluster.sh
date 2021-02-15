#!/bin/bash

BBGREEN='\033[1;92m'
RESET='\033[0m'

SVC_LIST="nginx mysql phpmyadmin wordpress ftps influxdb telegraf grafana"

for SVC in $SVC_LIST
do
    echo -e "${BBGREEN}$SVC${RESET}"
    kubectl delete svc,deployments,pv,pvc,pods,configmaps,role,rolebinding,secret,serviceaccount -l app=$SVC --wait=false
    sleep 3
done

sleep 10

eval $(minikube docker-env)

sleep 2

echo y | docker system prune -a