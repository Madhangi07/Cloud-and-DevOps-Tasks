# Exercise 9 - Prometheus Monitoring Failure

## Objective

Investigate why Prometheus cannot scrape application metrics.

## Incident

Grafana shows:

- No Data

Prometheus Target:

- payment-service DOWN

Prometheus Logs:

- context deadline exceeded

## Root Cause

The ServiceMonitor expects a port named **metrics**, but the Kubernetes Service exposes the port as **prometheus**.

### Service

```yaml
ports:
- name: prometheus
```

### ServiceMonitor

```yaml
endpoints:
- port: metrics
```

Because the port names do not match, Prometheus cannot discover the metrics endpoint.

## Resolution

Either:

Rename the Service port to:

```yaml
name: metrics
```

OR

Update the ServiceMonitor:

```yaml
port: prometheus
```

Both names must match for Prometheus to scrape metrics successfully.

## Files

- service.yaml
- servicemonitor.yaml
- README.md