#!/bin/bash
if ! kubectl get ns nicole-p; then
    kubectl create ns nicole-p
fi

if ! kubectl rollout status deployment sample-spring-boot -n nicole-p; then
    kubectl apply -f kubernetes.yml
fi