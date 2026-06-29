# Resolution

## Fix Steps

1. Enable OIDC Provider for the EKS Cluster.

2. Create an IAM Policy allowing:

- dynamodb:GetItem
- dynamodb:PutItem
- dynamodb:UpdateItem

3. Create an IAM Role with the correct trust relationship.

4. Annotate the Kubernetes Service Account with the IAM Role ARN.

5. Configure the Deployment to use the Service Account.

6. Restart the application.

## Expected Result

The pod assumes the IAM Role through IRSA and successfully accesses DynamoDB without AWS Access Keys.