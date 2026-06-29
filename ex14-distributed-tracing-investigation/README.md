# Exercise 14 - Distributed Tracing Investigation

## Objective

Investigate a slow Checkout API using metrics, logs, and distributed traces.

## Incident

Users reported that the Checkout API is slow.

### Grafana

95th Percentile Latency

4.8 seconds

### Prometheus

Request Count

Normal

### Tempo Trace

checkout-service

↓

inventory-service

↓

payment-service

payment-service = 4.2 seconds

## Investigation

### Metrics

- Request count is normal.
- Latency is high.

### Logs

- No application errors.
- Services are healthy.

### Trace

Distributed tracing identifies that the payment-service consumes most of the request time.

## Root Cause

The payment-service is the bottleneck.

## Resolution

Investigate the payment-service for:

- Slow database queries
- External API delays
- Network latency
- Resource bottlenecks

## Files

- metrics-analysis.md
- logs-analysis.md
- trace-analysis.md
- README.md

## Supporting Configuration

- payment-service.yaml
- prometheus.yml
- tempo-config.yaml
- grafana-dashboard.json