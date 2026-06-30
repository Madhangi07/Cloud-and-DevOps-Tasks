# Exercise 20 – External Secrets Integration

## Objective

Integrate AWS Secrets Manager with Kubernetes using the External Secrets Operator.

## Requirements

- Store application secrets in AWS Secrets Manager.
- Create a SecretStore.
- Create an ExternalSecret.
- Automatically generate a Kubernetes Secret.
- Consume the Secret in the application.

## Architecture

AWS Secrets Manager

↓

SecretStore

↓

ExternalSecret

↓

Kubernetes Secret

↓

Application

## Secrets

- DB_USERNAME
- DB_PASSWORD
- JWT_SECRET

## Validation

The application reads all secrets from the generated Kubernetes Secret without storing credentials in the Deployment manifest.