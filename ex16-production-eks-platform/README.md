# Exercise 16 – Production EKS Platform

## Objective

Build a production-ready Amazon EKS platform using Infrastructure as Code.

## Components

- Amazon EKS Cluster
- Managed Node Groups
- Dev Namespace
- Prod Namespace
- Metrics Server
- Cluster Autoscaler

## Infrastructure Flow

Terraform

↓

AWS

↓

VPC

↓

Amazon EKS

↓

Managed Node Group

↓

Kubernetes Cluster

↓

Namespaces

↓

Metrics Server

↓

Cluster Autoscaler

## Validation

- Nodes Ready
- Namespaces Created
- Metrics Available
- Autoscaler Running