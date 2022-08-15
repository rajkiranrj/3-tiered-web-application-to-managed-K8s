#!/bin/sh

kubectl delete -f configmap.yaml -n final


kubectl delete -f webapp-deployment.yaml -n final
kubectl delete -f webapp-lb-service.yaml -n final
kubectl get all -n final

sleep 20

kubectl create -f configmap.yaml -n final


kubectl create -f webapp-deployment.yaml -n final
kubectl create -f webapp-lb-service.yaml -n final
kubectl get all -n final
