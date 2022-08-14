#!/bin/sh

kubectl delete ns final
kubectl create ns final
kubectl create -f mysql-pvc.yaml -n final
kubectl create -f secret-data.yaml -n final
kubectl create -f mysql-deployment.yaml -n final
kubectl create -f mysql-service.yaml -n final
kubectl create -f configmap.yaml -n final

eksctl utils associate-iam-oidc-provider --cluster clo835 --approve
eksctl create iamserviceaccount --name clo835 --namespace final --cluster clo835 --attach-policy-arn arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess --approve --override-existing-serviceaccounts

kubectl create -f webapp-deployment.yaml -n final
kubectl create -f webapp-lb-service.yaml -n final
kubectl get all -n final

sleep 15

kubectl get all -n final
