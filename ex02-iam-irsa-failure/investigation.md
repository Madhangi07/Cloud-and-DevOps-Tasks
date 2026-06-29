# Investigation

## Incident

Application cannot read data from DynamoDB.

## Error

AccessDeniedException

User:

arn:aws:sts::123456789012:assumed-role/eks-nodegroup-role

Action:

dynamodb:GetItem

## Observation

The application is using the EKS Node IAM Role instead of the IAM Role associated with the Kubernetes Service Account (IRSA).

## Investigation Commands

kubectl get serviceaccount

kubectl describe serviceaccount

kubectl describe pod payment-service

kubectl get pods -o yaml

aws iam get-role

aws eks describe-cluster