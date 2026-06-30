# Investigation

## Symptoms

- Desired Replicas: 15
- Current Replicas: 5
- Pending Pods due to insufficient CPU.

## Commands Used

kubectl get hpa

kubectl describe hpa payment-service

kubectl get nodes

kubectl top nodes

kubectl describe pod <pending-pod>

kubectl logs deployment/cluster-autoscaler -n kube-system

## Observation

The HPA requested more Pods, but the scheduler could not place them because no node had enough available CPU.

The Cluster Autoscaler log reported:

No node group config found