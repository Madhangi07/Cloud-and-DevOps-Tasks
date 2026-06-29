# Exercise 2 - IAM / IRSA Failure

## Objective

Investigate why the application cannot access DynamoDB.

## Architecture

Pod

↓

Service Account

↓

IAM Role (IRSA)

↓

DynamoDB

## Incident

Application receives:

AccessDeniedException

The pod is using the EKS Node IAM Role instead of the IRSA IAM Role.

## Root Cause

IRSA configuration failure.

## Resolution

- Configure OIDC Provider
- Create IAM Policy
- Create IAM Role
- Annotate Service Account
- Restart Deployment

## Files

- investigation.md
- root-cause.md
- resolution.md
- README.md