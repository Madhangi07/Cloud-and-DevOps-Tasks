# Exercise 17 – Implement IRSA for Application Access

## Objective

Configure IAM Roles for Service Accounts (IRSA) so that a Kubernetes application running on Amazon EKS can securely access Amazon DynamoDB without storing AWS Access Keys.

---

## Requirements

- Create an IAM Policy
- Create an IAM Role
- Configure OIDC Provider
- Create a Kubernetes Service Account
- Associate the IAM Role with the Service Account
- Deploy the application using the Service Account

---

## Architecture

Application Pod

↓

Kubernetes Service Account

↓

IAM Role (IRSA)

↓

AWS STS

↓

DynamoDB

---

## Validation

The application successfully performs:

- GetItem
- PutItem
- UpdateItem

without using AWS Access Keys.

---

## Files Included

- iam-policy.json
- trust-policy.json
- service-account.yaml
- deployment.yaml
- commands.sh