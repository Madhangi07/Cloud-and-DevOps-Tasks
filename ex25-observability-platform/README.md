# Exercise 25 – Observability Platform Deployment

## Objective

Deploy a complete observability platform capable of collecting metrics, logs, and distributed traces from Kubernetes applications.

## Components

- Prometheus
- Grafana
- Loki
- Alloy
- Tempo

## Data Collection

### Metrics

Collected by Prometheus

Examples

- CPU Usage
- Memory Usage
- Request Rate
- Error Rate

### Logs

Application Logs

↓

Alloy

↓

Loki

↓

Grafana

### Traces

Application

↓

Tempo

↓

Grafana

## Dashboards

- CPU Usage
- Memory Usage
- Error Rate
- Request Rate

## Expected Result

A centralized monitoring platform capable of visualizing application metrics, logs, and traces.