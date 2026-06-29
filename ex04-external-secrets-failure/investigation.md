# Investigation

## Incident

Application startup failed.

## Pod Logs

FATAL:
Database password not found

Environment Variable

DB_PASSWORD missing

## External Secret

READY=False

## Error

SecretSyncedError

AccessDeniedException

User is not authorized to perform:

secretsmanager:GetSecretValue

## Investigation Commands

kubectl get externalsecret

kubectl describe externalsecret

kubectl logs external-secrets-controller

kubectl get secret