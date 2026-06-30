# Validation

## Verify Service Account

```bash
kubectl get sa
```

## Verify Pod

```bash
kubectl get pods
```

## Verify IAM Role Annotation

```bash
kubectl describe serviceaccount payment-service-sa
```

Expected Output

```
eks.amazonaws.com/role-arn
```

## Verify Application Access

The application successfully accesses DynamoDB using temporary AWS credentials provided by IRSA.

No AWS Access Keys are stored inside the Pod.