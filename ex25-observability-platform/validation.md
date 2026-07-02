# Validation

## Verify Namespace

```bash
kubectl get ns
```

## Verify Pods

```bash
kubectl get pods -n observability
```

## Verify Services

```bash
kubectl get svc -n observability
```

## Verify Prometheus

- Metrics available

## Verify Grafana

- Dashboards accessible

## Verify Loki

- Logs collected successfully

## Verify Alloy

- Logs forwarded to Loki

## Verify Tempo

- Traces stored successfully

## Expected Dashboard

- CPU Usage
- Memory Usage
- Request Rate
- Error Rate
- Logs
- Traces