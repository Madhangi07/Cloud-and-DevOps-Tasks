# Root Cause Analysis

## Security Group

Possible issue

Outbound rule missing.

## Network Policy

Possible issue

Egress traffic denied.

## Route Table

Possible issue

No route to DynamoDB endpoint.

## VPC Endpoint

Possible issue

Endpoint missing or incorrectly configured.

## Final Root Cause

Outbound connectivity to DynamoDB was blocked due to network configuration.