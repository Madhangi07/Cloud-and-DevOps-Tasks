# Exercise 21 – Production ALB Ingress Setup

## Objective

Expose multiple applications running in Amazon EKS through a single AWS Application Load Balancer (ALB).

## Requirements

- Route `/api/*` to the API service.
- Route `/admin/*` to the Admin service.
- Route `/dashboard/*` to the Dashboard service.
- Enable HTTPS using an ACM SSL certificate.
- Redirect HTTP traffic to HTTPS.
- Configure ALB target group health checks.

## Architecture

```
Internet
        │
        ▼
AWS Application Load Balancer
        │
 ┌──────┼──────────┐
 │      │          │
 ▼      ▼          ▼
/api  /admin  /dashboard
 │      │          │
API   Admin    Dashboard
```

## Components

- AWS Application Load Balancer
- AWS Load Balancer Controller
- Kubernetes Ingress
- ACM SSL Certificate

## Expected Result

- Users can securely access all three applications through one ALB.
- HTTP requests are automatically redirected to HTTPS.
- Healthy targets receive traffic.