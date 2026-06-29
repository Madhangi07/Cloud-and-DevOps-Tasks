# Prevention

## Who Changed It

Use:

kubectl rollout history deployment payment-service

or

Kubernetes Audit Logs

## How to Prevent Recurrence

- Enable ArgoCD Auto Sync
- Enable Self Heal
- Restrict manual kubectl access using RBAC
- Use GitOps workflow for all deployment changes

## Resolution

Sync the application from ArgoCD to restore the desired state.