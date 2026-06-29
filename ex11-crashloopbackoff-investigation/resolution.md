# Resolution

## Verify Database

kubectl get pods

kubectl get svc

## Verify Connectivity

kubectl exec -it payment-service -- sh

nc -zv 10.20.0.15 5432

## Verify Configuration

- Database Service
- Database Port
- Environment Variables
- Kubernetes Secret

## Resolution

Restore database availability and restart the deployment.