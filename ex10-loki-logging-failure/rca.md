# Root Cause Analysis (RCA)

## Incident Summary

Application logs stopped appearing in Grafana.

---

## Evidence

### Alloy

```
failed to push logs
HTTP 403
```

### Loki

```
authentication failed
```

---

## Investigation

### Application

Status: Healthy

Reason:

Application successfully generated logs because Alloy attempted to forward them.

---

### Alloy

Status: Running

Reason:

Successfully collected logs but failed while sending them to Loki.

---

### Loki

Status: Running

Reason:

Loki rejected incoming requests due to authentication failure.

---

### Grafana

Status: Healthy

Reason:

Grafana depends on Loki.

Since Loki received no logs, Grafana displayed no data.

---

## Root Cause

Authentication between Alloy and Loki failed.

HTTP 403 indicates that the request reached Loki, but authorization was denied.

## Failure Point

Application

↓

Alloy

↓

❌ Authentication Failure

↓

Loki

↓

Grafana