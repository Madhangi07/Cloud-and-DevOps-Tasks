# Verify Alloy logs
kubectl logs deployment/alloy

# Verify Loki logs
kubectl logs deployment/loki

# Verify Grafana
kubectl get pods

# Describe Alloy
kubectl describe deployment alloy

# Describe Loki
kubectl describe deployment loki

# Verify Services
kubectl get svc

# Verify Endpoints
kubectl get endpoints

# Verify ConfigMaps
kubectl get configmaps

# Verify Secrets
kubectl get secrets