# Resolution

## Fix Steps

1. Tag public subnets:

kubernetes.io/role/elb=1

2. Tag private subnets:

kubernetes.io/role/internal-elb=1

3. Verify cluster ownership tags.

4. Restart AWS Load Balancer Controller.

5. Reconcile the Ingress resource.

## Validation

kubectl get ingress

kubectl describe ingress payment-service

kubectl logs deployment/aws-load-balancer-controller -n kube-system