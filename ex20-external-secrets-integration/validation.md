# Validation

## Apply Resources

```bash
kubectl apply -f secretstore.yaml

kubectl apply -f externalsecret.yaml
```

## Verify External Secret

```bash
kubectl get externalsecret
```

Expected

```
READY=True
```

## Verify Kubernetes Secret

```bash
kubectl get secret payment-secret
```

## Restart Application

```bash
kubectl rollout restart deployment payment-service
```

The application successfully reads:

- DB_USERNAME
- DB_PASSWORD
- JWT_SECRET

without embedding credentials in the Deployment manifest.