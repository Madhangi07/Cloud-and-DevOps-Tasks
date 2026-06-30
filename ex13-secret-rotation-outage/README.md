# Exercise 13 - Secret Rotation Outage

## Objective

Investigate why the application continued using an old Kubernetes Secret after AWS Secrets Manager rotated the secret.

## Incident

AWS Secrets Manager

Secret Rotated

↓

Application

401 Unauthorized

↓

Application Logs

Token validation failed

↓

Kubernetes Secret

Last Updated

2 weeks ago

## Root Cause

The updated secret from AWS Secrets Manager was not synchronized to the Kubernetes Secret.

## Resolution

- Verify External Secret synchronization
- Verify SecretStore configuration
- Verify refresh interval
- Restart application after synchronization

## Supporting Configuration

- externalsecret.yaml
- secret.yaml
- deployment.yaml