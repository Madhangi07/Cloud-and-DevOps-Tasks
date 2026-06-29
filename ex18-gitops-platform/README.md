# Exercise 18 - GitOps Platform Using ArgoCD

## Objective

Deploy Kubernetes applications using GitOps.

## Repository Structure

```
gitops/
├── dev
├── qa
└── prod
```

## Workflow

Git Commit

↓

ArgoCD

↓

EKS

## Features

- Auto Sync
- Self Heal
- Pruning

## Files

- application.yaml
- gitops/dev/deployment.yaml
- gitops/qa/deployment.yaml
- gitops/prod/deployment.yaml