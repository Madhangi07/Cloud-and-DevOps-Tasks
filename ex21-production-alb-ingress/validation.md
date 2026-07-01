# Validation

## Deploy the Ingress

```bash
kubectl apply -f ingress.yaml
```

## Verify Ingress

```bash
kubectl get ingress
```

## Describe Ingress

```bash
kubectl describe ingress production-ingress
```

## Verify Routing

- `/api` → API Service
- `/admin` → Admin Service
- `/dashboard` → Dashboard Service

## Verify HTTPS

- Access the application using HTTPS.
- HTTP requests should automatically redirect to HTTPS.

## Verify Health Checks

Confirm that all target groups report healthy instances in the AWS Application Load Balancer.