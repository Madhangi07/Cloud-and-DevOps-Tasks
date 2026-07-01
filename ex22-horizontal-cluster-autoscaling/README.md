# Exercise 22 – Horizontal and Cluster Autoscaling

## Objective

Implement automatic application scaling in Kubernetes.

## Requirements

- Create a Deployment.
- Configure Horizontal Pod Autoscaler (HPA).
- Automatically scale Pods based on CPU utilization.
- Support Cluster Autoscaler for adding worker nodes when required.

## Components

- Deployment
- Horizontal Pod Autoscaler
- Metrics Server
- Cluster Autoscaler

## Load Testing Tools

- hey
- Apache Benchmark (ab)
- k6

## Expected Outcome

Pods scale from:

2 → 20

Worker Nodes scale from:

3 → 6

## Validation

- Verify Deployment
- Verify HPA
- Generate CPU load
- Observe Pod scaling