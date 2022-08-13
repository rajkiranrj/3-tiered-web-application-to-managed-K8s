#!/bin/sh

kubectl delete ns final
kubectl create ns final
kubectl create -f secret-data.yaml -n final
kubectl create -f mysql-pod-definition.yaml -n final
kubectl create -f mysql-service.yaml -n final
kubectl create -f webapp-pod-definition.yaml -n final
kubectl create -f webapp-service.yaml -n final
kubectl get all -n final

sleep 15

kubectl get all -n final
