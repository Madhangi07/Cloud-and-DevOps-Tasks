# Resolution

## Fix Steps

1. Verify the Cluster Autoscaler deployment.

2. Configure node group auto-discovery.

3. Verify IAM permissions for the Cluster Autoscaler.

4. Ensure Auto Scaling Groups are tagged correctly.

5. Monitor HPA and node scaling.

## Validation

kubectl get hpa

kubectl get nodes

kubectl top nodes

kubectl get pods