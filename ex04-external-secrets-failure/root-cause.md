# Root Cause Analysis

## AWS Issue

Yes

The IAM Role used by External Secrets Controller does not have permission to access AWS Secrets Manager.

## Kubernetes Issue

No

The ExternalSecret resource exists correctly.

## Secret Issue

The Kubernetes Secret was never created because the controller failed to retrieve the secret from AWS.

## Root Cause

Missing AWS IAM permission:

secretsmanager:GetSecretValue