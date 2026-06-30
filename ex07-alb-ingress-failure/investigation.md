# Investigation

## Symptoms

- Application returns 504 Gateway Timeout.
- Target registration failed.
- ALB Controller cannot discover subnets.

## Investigation Commands

kubectl get ingress

kubectl describe ingress payment-service

kubectl logs deployment/aws-load-balancer-controller -n kube-system

aws ec2 describe-subnets

## Observation

The AWS Load Balancer Controller failed to discover the required public/private subnets because they were not tagged correctly.