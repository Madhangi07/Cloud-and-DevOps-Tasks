# Exercise 6 - EKS Node Scale Failure

## Objective

Investigate why the application could not scale even though the Horizontal Pod Autoscaler (HPA) requested additional replicas.

## Incident

HPA

Desired Replicas: 15

Current Replicas: 5

Pending Pods

0/3 nodes available

Reason:

Insufficient CPU

Cluster Autoscaler Logs

No node group config found

## Root Cause

The HPA correctly requested additional Pods, but the Cluster Autoscaler was unable to provision new worker nodes because it was not configured correctly.

## Resolution

- Verify HPA configuration.
- Verify Cluster Autoscaler deployment.
- Configure Auto Scaling Node Groups.
- Verify IAM permissions.
- Restart Cluster Autoscaler.

## Supporting Configuration

- hpa.yaml
- cluster-autoscaler.yaml