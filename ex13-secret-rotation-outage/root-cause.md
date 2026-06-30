# Root Cause Analysis

## AWS Secrets Manager

Working correctly

Secret rotated successfully.

## Kubernetes Secret

Outdated

Last updated 2 weeks ago.

## External Secrets

Synchronization failed or refresh had not occurred.

## Application

Read the outdated Kubernetes Secret and failed token validation.

## Final Root Cause

Secret rotation did not propagate from AWS Secrets Manager to Kubernetes.