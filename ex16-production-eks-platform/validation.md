# Validation

## Verify Nodes

```bash
kubectl get nodes
```

Expected

All worker nodes should be Ready.

---

## Verify Namespaces

```bash
kubectl get ns
```

Expected

dev

prod

---

## Verify Metrics

```bash
kubectl top nodes
```

Metrics Server should return CPU and Memory usage.

---

## Verify Cluster Autoscaler

```bash
kubectl get deployment -A
```

Cluster Autoscaler should be Running.

## Final Result

- Production EKS Cluster created
- Managed Node Groups Ready
- Dev Namespace Created
- Prod Namespace Created
- Metrics Server Running
- Cluster Autoscaler Running