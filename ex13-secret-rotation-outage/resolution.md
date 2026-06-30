# Resolution

## Fix Steps

1. Verify External Secret status.

2. Verify SecretStore configuration.

3. Verify refreshInterval.

4. Force External Secret synchronization.

5. Restart application Pods.

## Validation

kubectl get externalsecret

kubectl get secret payment-secret

kubectl rollout restart deployment payment-service