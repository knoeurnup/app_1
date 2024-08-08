#!/bin/bash
# ECR_Repo="584322375074.dkr.ecr.ap-southeast-1.amazonaws.com"
# Region="ap-southeast-1"
AccountID="992382804210"
Region="us-east-1"
ECR_Repo="$AccountID.dkr.ecr.$Region.amazonaws.com"
VERSION="1.0.0"
APPNAME="app3"
# aws ecr get-login --region $Region | docker login --username AWS --password-stdin $ECR_Repo
## Linux
# aws ecr get-login-password --region $Region | docker login --username AWS --password-stdin $ECR_Repo

# Authenticate Docker to ECR
aws ecr get-login-password --region $Region | docker login --username AWS --password-stdin $ECR_Repo
# Build, tag, and push Docker image
docker build -t $APPNAME:$VERSION .
docker tag $APPNAME:$VERSION $ECR_Repo/$APPNAME:$VERSION
docker push $ECR_Repo/$APPNAME:$VERSION
