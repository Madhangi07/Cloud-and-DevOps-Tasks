# Investigation

## Symptoms

- Application returns HTTP 401 Unauthorized.
- Token validation failed.
- AWS secret was recently rotated.
- Kubernetes Secret still contains the old value.

## Investigation Commands

kubectl get externalsecret

kubectl describe externalsecret payment-secret

kubectl get secret payment-secret

kubectl describe secret payment-secret

kubectl logs deployment/external-secrets -n external-secrets

## Observation

AWS Secrets Manager contains the latest secret, but the Kubernetes Secret has not been updated.