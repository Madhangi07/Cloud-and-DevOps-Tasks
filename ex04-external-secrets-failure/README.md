# Exercise 4 - External Secrets Failure

## Objective

Investigate why the application failed to start because the database password was unavailable.

## Incident

Application Logs

Database password not found

DB_PASSWORD missing

ExternalSecret

READY=False

Error

AccessDeniedException

## Root Cause

The External Secrets Controller was unable to retrieve the secret from AWS Secrets Manager because the IAM Role lacked the required permission.

## Resolution

Grant the required IAM permission and verify the External Secret synchronization.

## Supporting Configuration

- externalsecret.yaml
- secretstore.yaml
- deployment.yaml