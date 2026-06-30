# Exercise 8 - Egress Restriction Incident

## Objective

Investigate why the application cannot access Amazon DynamoDB.

## Incident

Application Logs

Connection timeout

Curl Test

curl dynamodb.ap-south-1.amazonaws.com

Result

Connection timed out

## Investigation Areas

- Security Groups
- Network Policies
- Route Tables
- VPC Endpoints

## Root Cause

Outbound network traffic to DynamoDB was blocked.

## Resolution

- Verify Security Groups
- Verify Network Policies
- Verify Route Tables
- Verify VPC Endpoint configuration

## Supporting Configuration

- networkpolicy.yaml
- security-group.md
- vpc-endpoint.md