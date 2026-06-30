# Investigation

## Symptoms

- Application cannot reach DynamoDB.
- Curl request times out.
- No response from DynamoDB endpoint.

## Investigation Commands

kubectl get networkpolicy

kubectl describe networkpolicy

kubectl get pods

kubectl exec -it payment-service -- curl https://dynamodb.ap-south-1.amazonaws.com

aws ec2 describe-route-tables

aws ec2 describe-security-groups

aws ec2 describe-vpc-endpoints

## Observation

The application was unable to establish an outbound connection to DynamoDB.