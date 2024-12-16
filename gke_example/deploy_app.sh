#!/bin/bash

PROJECT_ID=$(gcloud config get-value project)
IMAGE_NAME=gcr.io/$PROJECT_ID/my-flask-app:latest

docker build -t $IMAGE_NAME .
docker push $IMAGE_NAME

sed -i "s/\[PROJECT_ID\]/$PROJECT_ID/g" deployment.yaml

kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
