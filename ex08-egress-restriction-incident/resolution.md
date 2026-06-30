# Resolution

## Fix Steps

1. Verify outbound Security Group rules.

2. Update Network Policy to allow egress.

3. Verify Route Table entries.

4. Create or verify the DynamoDB VPC Endpoint.

5. Test connectivity again.

## Validation

kubectl exec -it payment-service -- curl https://dynamodb.ap-south-1.amazonaws.com

aws ec2 describe-vpc-endpoints