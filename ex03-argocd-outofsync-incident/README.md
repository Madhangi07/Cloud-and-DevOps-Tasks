# Exercise 3 - ArgoCD OutOfSync Production Incident

## Objective

Investigate why ArgoCD reports an OutOfSync application.

## Incident

ArgoCD

Status: OutOfSync

Health: Healthy

Git Repository

replicas: 3

Live Cluster

replicas: 5

## Root Cause

The Deployment in the Kubernetes cluster was manually modified and no longer matches the Git repository.

## Investigation

Use

argocd app diff payment-service

to compare the desired and live states.

## Resolution

Sync the application through ArgoCD.

## Prevention

- Auto Sync
- Self Heal
- RBAC
- GitOps workflow

## Files

- deployment.yaml
- investigation.md
- prevention.md
- README.md