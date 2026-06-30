# Exercise 7 - ALB Ingress Failure

## Objective

Investigate why the application is inaccessible through the AWS Application Load Balancer (ALB).

## Incident

User Error

504 Gateway Timeout

Ingress Annotation

alb.ingress.kubernetes.io/target-type: ip

Events

Target registration failed

ALB Controller Logs

Unable to discover subnets

## Root Cause

The AWS Load Balancer Controller could not discover suitable subnets to create and register the ALB.

## Resolution

- Verify subnet tags.
- Verify IAM permissions.
- Verify Ingress configuration.
- Verify AWS Load Balancer Controller deployment.

## Supporting Configuration

- ingress.yaml
- alb-controller-values.yaml