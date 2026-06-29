# Investigation

## ArgoCD Status

Status: OutOfSync

Health: Healthy

## Git Repository

replicas: 3

## Live Cluster

replicas: 5

## Difference

Git Desired State

3 Replicas

↓

Live Cluster

5 Replicas

## Root Cause

Someone manually scaled the deployment in the Kubernetes cluster.

Example

kubectl scale deployment payment-service --replicas=5

## Changed Resource

Deployment

payment-service

## Investigation Command

argocd app diff payment-service