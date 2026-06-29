# Root Cause Analysis

## Why Node Role Is Being Used

The pod failed to assume the IAM Role through IRSA.

As a result, AWS SDK automatically used the worker node IAM Role.

## Why IRSA Is Not Working

Possible reasons

- OIDC Provider not configured
- IAM Role trust policy incorrect
- Service Account annotation missing
- Pod using default Service Account
- IAM Policy not attached

## Root Cause

IRSA configuration failure caused the application to fall back to the node IAM role.