#!/bin/bash

#kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.0.4/deploy/static/provider/cloud/deploy.yaml

kubectl patch ingressclass nginx -p '{"metadata": {"annotations":{"ingressclass.kubernetes.io/is-default-class":"true"}}}'
