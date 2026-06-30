# Create IAM Policy
aws iam create-policy \
--policy-name DynamoDBAccessPolicy \
--policy-document file://iam-policy.json

# Create IAM Role
aws iam create-role \
--role-name payment-service-irsa-role \
--assume-role-policy-document file://trust-policy.json

# Attach Policy
aws iam attach-role-policy \
--role-name payment-service-irsa-role \
--policy-arn arn:aws:iam::<ACCOUNT_ID>:policy/DynamoDBAccessPolicy

# Apply Service Account
kubectl apply -f service-account.yaml

# Deploy Application
kubectl apply -f deployment.yaml

# Verify
kubectl get sa

kubectl get pods