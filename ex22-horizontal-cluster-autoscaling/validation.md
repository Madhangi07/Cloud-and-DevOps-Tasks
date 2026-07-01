# Validation

## Deploy Application

```bash
kubectl apply -f deployment.yaml
```

## Deploy HPA

```bash
kubectl apply -f hpa.yaml
```

## Verify Deployment

```bash
kubectl get deployment
```

## Verify Pods

```bash
kubectl get pods
```

## Verify HPA

```bash
kubectl get hpa
```

## Verify Metrics

```bash
kubectl top pods

kubectl top nodes
```

## Expected Result

- Initial replicas = 2
- CPU load increases
- HPA increases Pod replicas
- After load decreases, HPA scales Pods down