# Exercise 10 – Loki Logging Failure

## Incident

Application logs suddenly stopped appearing in Grafana.

### Evidence

**Alloy Logs**

```
failed to push logs
HTTP 403
```

**Loki Logs**

```
authentication failed
```

## Objective

Investigate the logging pipeline and determine where the failure occurred.

## Logging Flow

Application
↓
Alloy
↓
Loki
↓
Grafana

## Investigation Goals

- Verify application is generating logs.
- Verify Alloy is collecting logs.
- Verify Alloy can communicate with Loki.
- Verify Loki authentication.
- Verify Grafana data source connectivity.

## Expected Outcome

- Identify the failed component.
- Explain the root cause.
- Recommend a solution.