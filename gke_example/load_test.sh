#!/bin/bash

EXTERNAL_IP=$(kubectl get service my-flask-service -o jsonpath='{.status.loadBalancer.ingress[0].ip}')

ab -n 100 -c 10 http://$EXTERNAL_IP/
