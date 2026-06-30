# Exercise 15 – Complete Production Outage

## Objective

Investigate a complete production outage after deployment and determine the root cause.

---

## Scenario

09:00

Deployment completed successfully.

09:05

Users started receiving:

HTTP 503 Service Unavailable

---

## Evidence

ArgoCD

Healthy

Pods

Running

Ingress

Healthy

Application Logs

Cannot connect to Redis

Redis Logs

Authentication failed

AWS Secrets Manager

Secret rotated at 08:55

---

## Timeline

| Time | Event |
|------|-------|
|08:55|Redis password rotated in AWS Secrets Manager|
|09:00|Application deployed through ArgoCD|
|09:05|Users received HTTP 503|
|09:06|Application logs reported Redis authentication failure|
|09:10|Investigation started|
|09:20|External Secret synchronization issue identified|
|09:30|Secret synchronized and application restarted|

---

## Investigation

Commands executed

```bash
kubectl get pods

kubectl logs deployment/payment-service

kubectl logs deployment/redis

kubectl get externalsecret

kubectl get secret payment-secret

kubectl describe externalsecret

kubectl rollout restart deployment payment-service
```

---

## Root Cause

AWS Secrets Manager rotated the Redis password.

However,

the Kubernetes Secret was **not updated** because External Secrets failed to synchronize.

The application continued using the old password.

Redis rejected authentication requests.

The application could not establish a Redis connection, causing HTTP 503 responses.

---

## Immediate Fix

- Synchronize External Secret.
- Verify Kubernetes Secret.
- Restart application Pods.

---

## Long-Term Prevention

- Monitor External Secrets synchronization.
- Alert on stale Kubernetes Secrets.
- Enable automatic application restart after secret updates.
- Monitor Redis authentication failures.

---

## Validation

```bash
kubectl get externalsecret

kubectl get secret payment-secret

kubectl rollout restart deployment payment-service
```

Expected Result

- ExternalSecret Ready=True
- Kubernetes Secret updated
- Application connected to Redis
- HTTP 200 responses restored
