# Resolution

## Fix Steps

1. Grant the IAM Role permission:

- secretsmanager:GetSecretValue

2. Verify the SecretStore configuration.

3. Restart External Secrets Controller.

4. Verify ExternalSecret becomes READY=True.

5. Verify Kubernetes Secret is created.

## Validation

kubectl get externalsecret

kubectl get secret

kubectl describe externalsecret