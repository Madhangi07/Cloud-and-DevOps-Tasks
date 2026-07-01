# Exercise 11 - CrashLoopBackOff Investigation

## Objective

Investigate why the payment-service pod enters CrashLoopBackOff.

## Incident

Pod

payment-service

Status

CrashLoopBackOff

Logs

panic:
dial tcp 10.20.0.15:5432

connection refused

Events

Back-off restarting failed container

## Investigation

### DNS

Working

### Database

Connection Refused

### Secret

No evidence of authentication failure

## Root Cause

Database connectivity issue.

## Resolution

- Verify PostgreSQL
- Verify Kubernetes Service
- Verify Environment Variables
- Verify Secrets
- Restart Deployment

## Files

- pod-status.md
- root-cause.md
- resolution.md
- README.md

## Supporting Configuration

- deployment.yaml
- secret.yaml
- database-service.yaml